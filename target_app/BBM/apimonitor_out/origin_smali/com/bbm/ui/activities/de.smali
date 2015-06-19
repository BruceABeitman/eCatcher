.class final Lcom/bbm/ui/activities/de;
.super Ljava/lang/Object;
.source "ChannelPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPickerActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/de;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

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

    iget-object v0, p0, Lcom/bbm/ui/activities/de;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "picked channel"

    iget-object v0, p0, Lcom/bbm/ui/activities/de;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->c(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/ui/activities/dg;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/dg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/de;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/ChannelPickerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/de;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->finish()V

    return-void
.end method
