.class public abstract Lcom/fasterxml/jackson/databind/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V
.end method

.method public abstract version()Lcom/fasterxml/jackson/a/w;
.end method
