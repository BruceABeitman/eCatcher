.class final Lcom/bbm/ui/activities/zg;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewListItemActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewListItemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/zg;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/zg;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/NewListItemActivity;->k:Lcom/bbm/ui/DateTimePickerView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/activities/zg;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v0, Lcom/bbm/ui/activities/NewListItemActivity;->k:Lcom/bbm/ui/DateTimePickerView;

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/bbm/ui/DateTimePickerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/activities/zg;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/activities/zg;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-static {}, Lcom/bbm/util/bd;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->a(J)J

    move-result-wide v0

    :goto_1e
    iput-wide v0, v2, Lcom/bbm/ui/activities/NewListItemActivity;->m:J

    :cond_20
    return-void

    :cond_21
    const/16 v0, 0x8

    goto :goto_d

    :cond_24
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method
