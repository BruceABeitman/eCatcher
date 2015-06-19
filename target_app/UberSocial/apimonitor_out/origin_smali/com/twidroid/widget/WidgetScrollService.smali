.class public Lcom/twidroid/widget/WidgetScrollService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "BaseScrollableWidget"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4

    new-instance v0, Lcom/twidroid/widget/l;

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetScrollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/twidroid/widget/l;-><init>(Lcom/twidroid/widget/WidgetScrollService;Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
