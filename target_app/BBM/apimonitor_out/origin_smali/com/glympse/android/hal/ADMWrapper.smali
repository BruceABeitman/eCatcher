.class public Lcom/glympse/android/hal/ADMWrapper;
.super Ljava/lang/Object;
.source "ADMWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/glympse/android/hal/ADMMessageHandler;->register(Landroid/content/Context;)V

    return-void
.end method
