from typing import Any

from physarum_sdp.config import PARSE_METHODS
from physarum_sdp.data.dat_s import dat_s_input
from physarum_sdp.utils.registry import Registry

PARSER_REGISTRY = Registry()


@PARSER_REGISTRY.register(PARSE_METHODS.DAT_S)
def parsing1(input_file_dir: str) -> Any:
    return dat_s_input(input_file_dir)