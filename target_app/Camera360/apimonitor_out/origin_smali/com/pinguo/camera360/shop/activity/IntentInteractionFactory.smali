.class public Lcom/pinguo/camera360/shop/activity/IntentInteractionFactory;
.super Lcom/pinguo/camera360/shop/activity/InteractionFactory;
.source "IntentInteractionFactory.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/pinguo/camera360/shop/activity/Interaction;
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/shop/activity/NullInteration;

    invoke-direct {v0}, Lcom/pinguo/camera360/shop/activity/NullInteration;-><init>()V

    return-object v0
.end method
