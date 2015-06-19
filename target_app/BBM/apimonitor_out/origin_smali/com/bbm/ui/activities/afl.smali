.class final Lcom/bbm/ui/activities/afl;
.super Ljava/lang/Object;
.source "SetChannelAvatarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget-object v0, Lcom/bbm/ui/activities/afn;->a:[I

    iget-object v1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Lcom/bbm/ui/activities/afp;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bbm/ui/activities/afp;->a(I)Lcom/bbm/ui/activities/afo;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/ui/activities/afo;->c:Lcom/bbm/ui/activities/afq;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/afq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :goto_17
    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-static {v1}, Lcom/bbm/util/fb;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method
