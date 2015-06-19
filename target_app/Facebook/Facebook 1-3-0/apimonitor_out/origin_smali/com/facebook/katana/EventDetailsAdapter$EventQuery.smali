.class public interface abstract Lcom/facebook/katana/EventDetailsAdapter$EventQuery;
.super Ljava/lang/Object;
.source "EventDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventQuery"
.end annotation


# static fields
.field public static final INDEX_CREATOR_ID:I = 0xa

.field public static final INDEX_END_TIME:I = 0x9

.field public static final INDEX_EVENT_DESCRIPTION:I = 0x3

.field public static final INDEX_EVENT_ID:I = 0x7

.field public static final INDEX_EVENT_NAME:I = 0x1

.field public static final INDEX_HIDE_GUEST_LIST:I = 0xc

.field public static final INDEX_HOST:I = 0x4

.field public static final INDEX_LOCATION:I = 0x5

.field public static final INDEX_MEDIUM_IMAGE_URL:I = 0x2

.field public static final INDEX_RSVP_STATUS:I = 0xb

.field public static final INDEX_START_TIME:I = 0x8

.field public static final INDEX_VENUE:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "medium_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "host"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "venue"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "creator_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rsvp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hide_guest_list"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/EventDetailsAdapter$EventQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
