.class final Lcom/bbm/util/ai;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Lcom/bbm/ui/d/c;


# instance fields
.field final synthetic a:Lcom/bbm/util/ah;


# direct methods
.method constructor <init>(Lcom/bbm/util/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/f/ab;)V
    .registers 5

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v1, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    iget-object v1, v1, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listRemove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "channelDeleteCommentError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    iget-object v0, v0, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    iget-object v1, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    iget-object v1, v1, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    const v2, 0x7f0e02ef

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_32
    iget-object v0, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    iget-boolean v0, v0, Lcom/bbm/util/ah;->f:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/bbm/util/ai;->a:Lcom/bbm/util/ah;

    iget-object v0, v0, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/cn;->finish()V

    :cond_3f
    return-void
.end method
