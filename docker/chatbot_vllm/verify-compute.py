"""Fail the image build if the platform layer changed any compute package."""
import importlib.metadata as metadata
import json
from pathlib import Path
import subprocess

root = Path('/opt/course-platform')
expected = json.loads((root/'compute-baseline.json').read_text())
actual = {d.metadata['Name'].lower().replace('_','-'): d.version for d in metadata.distributions()}
changed = {n: [v, actual.get(n)] for n,v in expected.items() if actual.get(n) != v}
if changed:
    raise RuntimeError('Compute stack changed: '+json.dumps(changed))
(root/'packages-built.json').write_text(json.dumps(actual,indent=2))
(root/'dpkg-built.txt').write_text(subprocess.check_output(['dpkg-query','-W'],text=True))
check = subprocess.run(['python3','-m','pip','check'],capture_output=True,text=True)
(root/'pip-check-built.txt').write_text(check.stdout+check.stderr)
baseline = set((root/'pip-check-baseline.txt').read_text().splitlines())
new_conflicts = set((check.stdout+check.stderr).splitlines()) - baseline
if new_conflicts:
    raise RuntimeError('New dependency conflicts: '+str(sorted(new_conflicts)))
print('Original compute packages preserved; new dependency conflicts: none')
