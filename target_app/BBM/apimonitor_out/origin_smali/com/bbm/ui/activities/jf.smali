.class final Lcom/bbm/ui/activities/jf;
.super Lcom/bbm/ui/cj;
.source "EditListItemActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/EditListItemActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/EditListItemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/jf;->a:Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_1e

    :goto_3
    return-void

    :pswitch_4
    const-string v0, "footer complete onAction"

    const-class v1, Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/jf;->a:Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/EditListItemActivity;->a(Lcom/bbm/ui/activities/EditListItemActivity;)V

    goto :goto_3

    :pswitch_11
    const-string v0, "footer delete onAction"

    const-class v1, Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/jf;->a:Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/EditListItemActivity;->b(Lcom/bbm/ui/activities/EditListItemActivity;)V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
    .end packed-switch
.end method
