.class final Lcom/bbm/ui/c/cs;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bbm/g/o;

.field final synthetic c:Lcom/bbm/ui/activities/ev;

.field final synthetic d:Lcom/bbm/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ck;ILcom/bbm/g/o;Lcom/bbm/ui/activities/ev;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/c/cs;->d:Lcom/bbm/ui/c/ck;

    iput p2, p0, Lcom/bbm/ui/c/cs;->a:I

    iput-object p3, p0, Lcom/bbm/ui/c/cs;->b:Lcom/bbm/g/o;

    iput-object p4, p0, Lcom/bbm/ui/c/cs;->c:Lcom/bbm/ui/activities/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 5

    iget v0, p0, Lcom/bbm/ui/c/cs;->a:I

    packed-switch v0, :pswitch_data_3e

    :goto_5
    :pswitch_5
    iget-object v0, p0, Lcom/bbm/ui/c/cs;->c:Lcom/bbm/ui/activities/ev;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_10
    const-string v0, "contact onItemClick"

    const-class v1, Lcom/bbm/ui/c/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cs;->d:Lcom/bbm/ui/c/ck;

    iget-object v1, p0, Lcom/bbm/ui/c/cs;->b:Lcom/bbm/g/o;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ck;->b(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V

    goto :goto_5

    :pswitch_1f
    const-string v0, "pending invite onItemClick"

    const-class v1, Lcom/bbm/ui/c/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cs;->d:Lcom/bbm/ui/c/ck;

    iget-object v1, p0, Lcom/bbm/ui/c/cs;->b:Lcom/bbm/g/o;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V

    goto :goto_5

    :pswitch_2e
    const-string v0, "non-contact onItemClick"

    const-class v1, Lcom/bbm/ui/c/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cs;->d:Lcom/bbm/ui/c/ck;

    iget-object v1, p0, Lcom/bbm/ui/c/cs;->b:Lcom/bbm/g/o;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V

    goto :goto_5

    nop

    :pswitch_data_3e
    .packed-switch 0x7f0a006f
        :pswitch_10
        :pswitch_5
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
