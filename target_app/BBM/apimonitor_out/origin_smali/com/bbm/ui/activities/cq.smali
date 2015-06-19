.class final Lcom/bbm/ui/activities/cq;
.super Ljava/lang/Object;
.source "ChannelOfficeHoursSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cq;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/bbm/ui/activities/cq;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/cv;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;Lcom/bbm/ui/activities/cv;)Lcom/bbm/ui/activities/cv;

    return-void
.end method
