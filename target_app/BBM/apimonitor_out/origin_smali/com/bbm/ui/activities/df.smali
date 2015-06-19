.class final Lcom/bbm/ui/activities/df;
.super Ljava/lang/Object;
.source "ChannelPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPickerActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/df;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/df;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->finish()V

    return-void
.end method
