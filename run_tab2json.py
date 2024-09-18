import sys
import os
src_dir = sys.argv[1]
target_dir = sys.argv[2]
try:
    from isaagents.convert import isatab2json
except ImportError as e:
    raise RuntimeError("Could not import isaagents package")
isatab2json.convert(src_dir, target_dir)
