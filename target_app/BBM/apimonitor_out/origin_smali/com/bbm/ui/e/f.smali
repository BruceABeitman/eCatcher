.class final Lcom/bbm/ui/e/f;
.super Ljava/lang/Object;
.source "ChannelInviteMessageHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/ec;

.field final synthetic b:Lcom/bbm/ui/e/d;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/d;Lcom/bbm/d/ec;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;

    iput-object p2, p0, Lcom/bbm/ui/e/f;->a:Lcom/bbm/d/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "Join Clicked"

    const-class v1, Lcom/bbm/ui/e/d;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;

    invoke-static {v0}, Lcom/bbm/ui/e/d;->b(Lcom/bbm/ui/e/d;)Lcom/bbm/ui/e/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;

    invoke-static {v1}, Lcom/bbm/ui/e/d;->a(Lcom/bbm/ui/e/d;)Lcom/bbm/d/fg;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/f;->a:Lcom/bbm/d/ec;

    iget-wide v2, v2, Lcom/bbm/d/ec;->z:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bbm/ui/e/bg;->a(Lcom/bbm/d/fg;J)V

    return-void
.end method
