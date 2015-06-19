.class final Lcom/bbm/util/z;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bbm/util/y;


# direct methods
.method constructor <init>(Lcom/bbm/util/y;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/z;->b:Lcom/bbm/util/y;

    const v0, 0x7f0e04c7

    iput v0, p0, Lcom/bbm/util/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/bbm/util/z;->b:Lcom/bbm/util/y;

    iget-object v0, v0, Lcom/bbm/util/y;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/z;->b:Lcom/bbm/util/y;

    iget-object v1, v1, Lcom/bbm/util/y;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/bbm/util/z;->a:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bbm/util/z;->b:Lcom/bbm/util/y;

    iget-object v4, v4, Lcom/bbm/util/y;->c:Lcom/bbm/d/ec;

    iget-object v4, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
