.class public final Lcom/instagram/creation/video/f/am;
.super Lcom/instagram/creation/video/f/ad;
.source "VideoCoverFragmentICS.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private f:Lcom/instagram/creation/video/f/an;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-object v0
.end method


# virtual methods
.method public final U()Lcom/instagram/creation/video/f/ah;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-object v0
.end method

.method public final W()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/j;)V
    .registers 3

    new-instance v0, Lcom/instagram/creation/video/f/an;

    invoke-direct {v0, p0, p1}, Lcom/instagram/creation/video/f/an;-><init>(Lcom/instagram/creation/video/f/am;Lcom/instagram/creation/video/gl/j;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-void
.end method
