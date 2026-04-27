import os

from invoke import task, context


PATH_FOR_LINT = os.getenv("PATH_FOR_LINT")


@task
def black(ctx: context.Context) -> None:
    """
    Format the code using Black.
    """
    ctx.run(f"black {PATH_FOR_LINT}", pty=True)

@task
def isort(ctx: context.Context) -> None:
    """
    Sort imports using isort.
    """
    ctx.run("isort $PATH_FOR_LINT", pty=True)

@task
def ruff(ctx: context.Context, path: str="src tests") -> None:
    """
    Lint the code using Ruff.
    """
    ctx.run(f"ruff check {path}", pty=True)

@task
def precommit(ctx: context.Context) -> None:
    """
    Run all pre-commit hooks.
    """
    ctx.run("pre-commit run --all-files", pty=True)
