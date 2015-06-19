.class public final Lcom/facebook/katana/provider/MailboxProvider$MessageDisplayColumns;
.super Lcom/facebook/katana/provider/MailboxProvider$MessageColumns;
.source "MailboxProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/MailboxProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageDisplayColumns"
.end annotation


# static fields
.field public static final AUTHOR_IMAGE_URL:Ljava/lang/String; = "author_image_url"

.field public static final AUTHOR_NAME:Ljava/lang/String; = "author_name"

.field public static final AUTHOR_UID:Ljava/lang/String; = "author_uid"

.field public static final OBJECT_IMAGE_URL:Ljava/lang/String; = "object_image_url"

.field public static final OBJECT_NAME:Ljava/lang/String; = "object_name"

.field public static final OBJECT_UID:Ljava/lang/String; = "object_uid"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/provider/MailboxProvider$MessageColumns;-><init>()V

    return-void
.end method
