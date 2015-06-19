.class public abstract Lcom/googlecode/javacpp/FunctionPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "FunctionPointer.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method
