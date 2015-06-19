.class public abstract Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
.super Ljava/awt/datatransfer/Clipboard;
.source "SourceFile"


# static fields
.field protected static final OPS_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/awt/datatransfer/Clipboard;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onShutdown()V
    .registers 1

    return-void
.end method
