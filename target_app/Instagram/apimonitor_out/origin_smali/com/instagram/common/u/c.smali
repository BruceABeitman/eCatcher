.class final Lcom/instagram/common/u/c;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/u/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/common/u/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/common/u/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    return-void
.end method
