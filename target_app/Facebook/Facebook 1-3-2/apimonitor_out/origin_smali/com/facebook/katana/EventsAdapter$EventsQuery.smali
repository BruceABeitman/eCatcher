.class interface abstract Lcom/facebook/katana/EventsAdapter$EventsQuery;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "EventsQuery"
.end annotation


# static fields
.field public static final INDEX_EVENT_END_TIME:I = 0x3

.field public static final INDEX_EVENT_ID:I = 0x6

.field public static final INDEX_EVENT_IMAGE_URL:I = 0x4

.field public static final INDEX_EVENT_NAME:I = 0x1

.field public static final INDEX_EVENT_START_TIME:I = 0x2

.field public static final INDEX_RSVP_STATUS:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rsvp_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/EventsAdapter$EventsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
