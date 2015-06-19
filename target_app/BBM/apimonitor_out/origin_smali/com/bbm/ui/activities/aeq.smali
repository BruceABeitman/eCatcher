.class final Lcom/bbm/ui/activities/aeq;
.super Lcom/bbm/ui/cj;
.source "SelectContactActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aeq;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(I)V
    .registers 3

    packed-switch p1, :pswitch_data_a

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/aeq;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->k(Lcom/bbm/ui/activities/SelectContactActivity;)V

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .registers 1

    return-void
.end method
