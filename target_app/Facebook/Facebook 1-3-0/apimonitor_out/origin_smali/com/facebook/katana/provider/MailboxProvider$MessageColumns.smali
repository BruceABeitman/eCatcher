.class public Lcom/facebook/katana/provider/MailboxProvider$MessageColumns;
.super Ljava/lang/Object;
.source "MailboxProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/MailboxProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageColumns"
.end annotation


# static fields
.field public static final AUTHOR_USER_ID:Ljava/lang/String; = "author_uid"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "mid ASC"

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final MESSAGE_ID:Ljava/lang/String; = "mid"

.field public static final SPECIFIC_ID:Ljava/lang/String; = "mailbox_messages._id"

.field public static final THREAD_ID:Ljava/lang/String; = "tid"

.field public static final TIME_SENT:Ljava/lang/String; = "sent"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
