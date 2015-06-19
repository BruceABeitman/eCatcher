.class public final Lcom/facebook/katana/provider/EventsProvider$EventColumns;
.super Ljava/lang/Object;
.source "EventsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/EventsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventColumns"
.end annotation


# static fields
.field public static final CREATOR_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final CREATOR_ID:Ljava/lang/String; = "creator_id"

.field public static final CREATOR_IMAGE_URL:Ljava/lang/String; = "creator_image_url"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "start_time ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final EVENT_SUBTYPE:Ljava/lang/String; = "event_subtype"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final HIDE_GUEST_LIST:Ljava/lang/String; = "hide_guest_list"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MEDIUM_IMAGE_URL:Ljava/lang/String; = "medium_image_url"

.field public static final RSVP_STATUS:Ljava/lang/String; = "rsvp_status"

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final TAGLINE:Ljava/lang/String; = "tagline"

.field public static final VENUE:Ljava/lang/String; = "venue"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
