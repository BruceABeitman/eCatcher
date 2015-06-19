.class public Lcom/pinguo/camera360/camera/activity/OptionsThanks$Author;
.super Ljava/lang/Object;
.source "OptionsThanks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsThanks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Author"
.end annotation


# instance fields
.field image:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks$Author;->image:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks$Author;->name:Ljava/lang/String;

    return-object v0
.end method
