.class public final Lcom/facebook/katana/provider/LoggingProvider$SessionColumns;
.super Ljava/lang/Object;
.source "LoggingProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/LoggingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionColumns"
.end annotation


# static fields
.field public static final API_LOG:Ljava/lang/String; = "api_log"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.facebook.logresult"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "session_id ASC"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SPECIFIC_ID:Ljava/lang/String; = "perf_sessions._id"

.field public static final START_TIME:Ljava/lang/String; = "start_time"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
