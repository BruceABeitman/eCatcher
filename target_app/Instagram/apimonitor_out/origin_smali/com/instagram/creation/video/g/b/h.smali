.class public final Lcom/instagram/creation/video/g/b/h;
.super Ljava/lang/Object;
.source "MediaCodecListWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static a:Lcom/instagram/creation/video/g/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/creation/video/g/b/h;

    invoke-direct {v0}, Lcom/instagram/creation/video/g/b/h;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/h;->a:Lcom/instagram/creation/video/g/b/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/creation/video/g/b/h;
    .registers 1

    sget-object v0, Lcom/instagram/creation/video/g/b/h;->a:Lcom/instagram/creation/video/g/b/h;

    return-object v0
.end method
