.class final Lcom/bbm/ui/activities/ahr;
.super Ljava/lang/Object;
.source "SponsoredAdActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/ahq;
.method constructor <init>(Lcom/bbm/ui/activities/ahq;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahr;->a:Lcom/bbm/ui/activities/ahq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ad;->b:Lcom/bbm/b/ad;
iget-object v2, p0, Lcom/bbm/ui/activities/ahr;->a:Lcom/bbm/ui/activities/ahq;
iget-object v2, v2, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SponsoredAdActivity;->b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/b/ac;
invoke-direct {v3, v1, v2}, Lcom/bbm/b/ac;-><init>(Lcom/bbm/b/ad;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
return-void
.end method