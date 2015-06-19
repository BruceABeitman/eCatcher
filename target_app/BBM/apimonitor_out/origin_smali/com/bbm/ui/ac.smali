.class final Lcom/bbm/ui/ac;
.super Ljava/lang/Object;
.source "ChannelsSegmentedControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ChannelsSegmentedControl;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ChannelsSegmentedControl;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_18

    const-string v0, "Discover Clicked"

    const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->b(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_30

    const-string v0, "MyChannels Clicked"

    const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V

    goto :goto_17

    :cond_30
    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->c(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_17

    const-string v0, "Notificaitons Clicked"

    const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V

    goto :goto_17
.end method
