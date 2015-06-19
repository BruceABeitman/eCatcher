.class final Lcom/bbm/util/ed;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/util/eo;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bbm/util/eo;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/ed;->a:Lcom/bbm/util/eo;

    iput-object p2, p0, Lcom/bbm/util/ed;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/util/ed;->a:Lcom/bbm/util/eo;

    iget-object v0, v0, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/util/ed;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bbm/b/e;->a(Ljava/lang/String;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/util/ed;->a:Lcom/bbm/util/eo;

    iget-boolean v0, v0, Lcom/bbm/util/eo;->m:Z

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatesFragmentUtil: Ad="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/util/ed;->a:Lcom/bbm/util/eo;

    iget-object v1, v1, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Viewed through share action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;

    sget-object v2, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v3, p0, Lcom/bbm/util/ed;->a:Lcom/bbm/util/eo;

    iget-object v3, v3, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V

    :cond_41
    return-void
.end method
