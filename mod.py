from abc import ABC


class Module(ABC):
    """
    Base class for all handlers
    """
    pass


handlers: list[Module] = []
