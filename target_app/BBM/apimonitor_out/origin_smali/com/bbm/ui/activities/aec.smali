.class final Lcom/bbm/ui/activities/aec;
.super Lcom/bbm/ui/cj;
.source "SelectCategoryActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectCategoryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aec;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/aec;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    new-instance v1, Lcom/bbm/ui/activities/aed;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aed;-><init>(Lcom/bbm/ui/activities/aec;)V

    new-instance v2, Lcom/bbm/ui/activities/aee;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/aee;-><init>(Lcom/bbm/ui/activities/aec;)V

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;Lcom/bbm/ui/activities/aek;)V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
