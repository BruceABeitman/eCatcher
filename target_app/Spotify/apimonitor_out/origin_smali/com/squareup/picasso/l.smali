.class final Lcom/squareup/picasso/l;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    const-string v0, "Picasso-Dispatcher"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method
