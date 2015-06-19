.class final Lcom/bbm/ui/activities/abl;
.super Ljava/lang/Object;
.source "PreviewChannelActivity.java"
.implements Lcom/bbm/ui/b/f;
.field final synthetic a:Lcom/bbm/ui/b/a;
.field final synthetic b:Lcom/bbm/ui/activities/PreviewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/ui/b/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/abl;->b:Lcom/bbm/ui/activities/PreviewChannelActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/abl;->a:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/abl;->b:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->i(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abl;->a:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
return-void
.end method