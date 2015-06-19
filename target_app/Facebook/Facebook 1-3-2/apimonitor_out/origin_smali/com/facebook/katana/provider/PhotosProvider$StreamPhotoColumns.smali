.class public final Lcom/facebook/katana/provider/PhotosProvider$StreamPhotoColumns;
.super Ljava/lang/Object;
.source "PhotosProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/PhotosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamPhotoColumns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "url DESC"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
