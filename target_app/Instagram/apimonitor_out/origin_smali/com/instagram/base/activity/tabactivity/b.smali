.class final Lcom/instagram/base/activity/tabactivity/b;
.super Ljava/lang/Object;
.source "IgTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/instagram/base/activity/tabactivity/IgTabHost;


# direct methods
.method constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    sparse-switch p2, :sswitch_data_1a

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_17
    return v0

    :sswitch_18
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_data_1a
    .sparse-switch
        0x13 -> :sswitch_18
        0x14 -> :sswitch_18
        0x15 -> :sswitch_18
        0x16 -> :sswitch_18
        0x17 -> :sswitch_18
        0x42 -> :sswitch_18
    .end sparse-switch
.end method
