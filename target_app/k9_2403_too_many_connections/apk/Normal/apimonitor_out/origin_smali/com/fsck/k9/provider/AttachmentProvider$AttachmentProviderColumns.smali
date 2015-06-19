.class public Lcom/fsck/k9/provider/AttachmentProvider$AttachmentProviderColumns;
.super Ljava/lang/Object;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentProviderColumns"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
