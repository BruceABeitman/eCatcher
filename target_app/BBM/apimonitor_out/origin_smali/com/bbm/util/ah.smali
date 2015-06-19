.class final Lcom/bbm/util/ah;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bbm/ui/activities/cn;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V
    .registers 7

    iput-object p1, p0, Lcom/bbm/util/ah;->a:Lcom/bbm/ui/b/o;

    iput-object p2, p0, Lcom/bbm/util/ah;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/util/ah;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/util/ah;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/ah;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/util/ah;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbm/util/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/ah;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/util/ah;->c:Ljava/lang/String;

    new-instance v3, Lcom/bbm/d/cw;

    invoke-direct {v3, v1, v2}, Lcom/bbm/d/cw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/util/ah;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/bbm/d/cw;->a(Ljava/lang/String;)Lcom/bbm/d/cw;

    invoke-virtual {v3, v0}, Lcom/bbm/d/cw;->b(Ljava/lang/String;)Lcom/bbm/d/cw;

    new-instance v1, Lcom/bbm/util/ai;

    invoke-direct {v1, p0}, Lcom/bbm/util/ai;-><init>(Lcom/bbm/util/ah;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v4, p0, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v2, v0, v1, v4}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    const-string v2, "channelDeleteCommentError"

    iget-object v4, p0, Lcom/bbm/util/ah;->e:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v0, v2, v1, v4}, Lcom/bbm/ui/d/d;->b(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
