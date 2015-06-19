.class public Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;
.super Ljava/lang/Object;
.source "IDPhoto.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateData"
.end annotation


# static fields
.field public static final KEY_FORMAT:Ljava/lang/String; = "format"

.field public static final KEY_PASSPORT_HEIGHT:Ljava/lang/String; = "passportHeight"

.field public static final KEY_PASSPORT_WIDTH:Ljava/lang/String; = "passportWidth"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
