# WDL Parser

This repo contains code used to publish pip packages for the parsers located in the [official WDL repository](https://github.com/openwdl/wdl).
Using those packages, you can parse WDL workflows under any version of the WDL specification.

## Installation
To install the parsers, run:
```bash
pip install wdl-parser
```

## Usage

The WDL parsers are provided within one package named `wdl_parser`. 
One module exists inside this for each version of the spec, with all hyphens and dots replaced by underscores.
Thus, the modules available to import are:

* `wdl_parser.1_0`
* `wdl_parser.development`
* `wdl_parser.draft_2`
* `wdl_parser.draft_3`

Each of these modules exposes a `parse` function, which takes a string containing the WDL to parse.
See below for an example.

Once you have the AST, refer to the [Hermes documentation](https://github.com/scottfrazer/hermes/blob/develop/DOCS.md) for more
information on how to use it.

## Example
```python
from wdl_parser import draft_2

with open('./gatk4-data-processing/processing-for-variant-discovery-gatk4.wdl') as wdlfile:
    tree = draft_2.parse(wdlfile.read())

```
