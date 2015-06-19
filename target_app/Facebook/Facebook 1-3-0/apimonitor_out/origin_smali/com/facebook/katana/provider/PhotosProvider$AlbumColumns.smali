.class public final Lcom/facebook/katana/provider/PhotosProvider$AlbumColumns;
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
    name = "AlbumColumns"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "aid"

.field public static final COVER_PHOTO_ID:Ljava/lang/String; = "cover_pid"

.field public static final COVER_PHOTO_URL:Ljava/lang/String; = "cover_url"

.field public static final COVER_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
