.class public Lcom/glympse/android/api/GlympseEvents;
.super Ljava/lang/Object;
.source "GlympseEvents.java"


# static fields
.field public static final ACCOUNT_LINK_FAILED:I = 0x2

.field public static final ACCOUNT_LINK_SUCCEEDED:I = 0x1

.field public static final ACCOUNT_LIST_REFRESH_FAILED:I = 0x80

.field public static final ACCOUNT_LIST_REFRESH_SUCCEEDED:I = 0x40

.field public static final ACCOUNT_REFRESH_FAILED:I = 0x20

.field public static final ACCOUNT_REFRESH_SUCCEEDED:I = 0x10

.field public static final ACCOUNT_UNLINK_FAILED:I = 0x8

.field public static final ACCOUNT_UNLINK_SUCCEEDED:I = 0x4

.field public static final APPLICATIONS_APP_ADDED:I = 0x1

.field public static final APPLICATIONS_APP_CHANGED:I = 0x4

.field public static final APPLICATIONS_APP_LAUNCHED:I = 0x8

.field public static final APPLICATIONS_APP_REMOVED:I = 0x2

.field public static final BATTERY_STATE_CHANGED:I = 0x1

.field public static final CONFIG_CHANGED:I = 0x3

.field public static final CONFIG_LOCATION_SHARING_CHANGED:I = 0x2

.field public static final CONFIG_XOA_CHANGED:I = 0x1

.field public static final GROUPS_DECODED:I = 0x2

.field public static final GROUPS_GROUP_ADDED:I = 0x4

.field public static final GROUPS_GROUP_REMOVED:I = 0x8

.field public static final GROUPS_INVITE:I = 0x1

.field public static final GROUPS_SYNCED_WITH_SERVER:I = 0x20

.field public static final GROUP_CREATED:I = 0x100000

.field public static final GROUP_FAILED:I = 0x40000

.field public static final GROUP_FIRST_VIEWED:I = 0x100

.field public static final GROUP_INVALID_CODE:I = 0x1

.field public static final GROUP_INVITE_CREATED:I = 0x2

.field public static final GROUP_INVITE_FAILED:I = 0x8

.field public static final GROUP_INVITE_SENT:I = 0x4

.field public static final GROUP_MEMBER_ADDED:I = 0x10

.field public static final GROUP_MEMBER_REMOVED:I = 0x20

.field public static final GROUP_MEMBER_TICKET_CHANGED:I = 0x200

.field public static final GROUP_MEMBER_TICKET_RESIGNING:I = 0x400

.field public static final GROUP_NAME_CHANGED:I = 0x80000

.field public static final GROUP_ORDER_CHANGED:I = 0x40

.field public static final HANDOFF_PROVIDER_AVAILABLE:I = 0x2

.field public static final HANDOFF_PROVIDER_CONNECTED:I = 0x1

.field public static final HANDOFF_PROVIDER_DISCONNECTED:I = 0x4

.field public static final IMAGE_CHANGED:I = 0x1

.field public static final INVITE_DECODED:I = 0x1

.field public static final INVITE_INVALID_CODE:I = 0x2

.field public static final LISTENER_APPLICATIONS:I = 0xe

.field public static final LISTENER_BATTERY:I = 0x6

.field public static final LISTENER_CONFIG:I = 0xb

.field public static final LISTENER_GROUP:I = 0xa

.field public static final LISTENER_GROUPS:I = 0x9

.field public static final LISTENER_HANDOFF:I = 0xc

.field public static final LISTENER_ID_MAX:I = 0x7fffffff

.field public static final LISTENER_ID_MIN:I = 0x7fff0000

.field public static final LISTENER_IMAGE:I = 0x7

.field public static final LISTENER_INVITE:I = 0x2

.field public static final LISTENER_LINKED_ACCOUNTS:I = 0xd

.field public static final LISTENER_LOCATION:I = 0x8

.field public static final LISTENER_NETWORK:I = 0x5

.field public static final LISTENER_PLATFORM:I = 0x1

.field public static final LISTENER_TICKET:I = 0x4

.field public static final LISTENER_TRIGGERS:I = 0xf

.field public static final LISTENER_USER:I = 0x3

.field public static final LOCATION_PROFILE_CHANGED:I = 0x100

.field public static final LOCATION_PROVIDER_STOPPED:I = 0x200

.field public static final LOCATION_REGION_ENTERED:I = 0x10

.field public static final LOCATION_REGION_LEFT:I = 0x20

.field public static final LOCATION_STATE_CHANGED:I = 0x1

.field public static final NETWORK_IS_SENDING_REQUEST:I = 0x20

.field public static final NETWORK_RECOVERED:I = 0x2

.field public static final NETWORK_START_FAILING:I = 0x1

.field public static final NETWORK_WILL_SEND_REQUEST:I = 0x10

.field public static final PLATFORM_ACCOUNT_CREATED:I = 0x2

.field public static final PLATFORM_ACCOUNT_CREATE_FAILED:I = 0x4

.field public static final PLATFORM_DATA_APPENDED:I = 0x1000

.field public static final PLATFORM_FIRST_LAUNCH:I = 0x1000000

.field public static final PLATFORM_INVALID_API_KEY:I = 0x1

.field public static final PLATFORM_INVALID_CREDENTIALS:I = 0x10

.field public static final PLATFORM_INVITE_REQUEST:I = 0x800000

.field public static final PLATFORM_INVITE_TICKET:I = 0x400000

.field public static final PLATFORM_LOCATION:I = 0x400

.field public static final PLATFORM_LOCATIONS_APPENDED:I = 0x800

.field public static final PLATFORM_LOGIN_FAILED:I = 0x20

.field public static final PLATFORM_LOGIN_SUCCEEDED:I = 0x8

.field public static final PLATFORM_RATE_LIMITED:I = 0x1000000

.field public static final PLATFORM_SESSION_FAILED:I = 0x40

.field public static final PLATFORM_STARTED:I = 0x100

.field public static final PLATFORM_STOPPED:I = 0x200

.field public static final PLATFORM_SYNCED_WITH_SERVER:I = 0x80

.field public static final PLATFORM_TICKET_ADDED:I = 0x20000

.field public static final PLATFORM_TICKET_ARRIVED:I = 0x200000

.field public static final PLATFORM_TICKET_CHANGED:I = 0x80000

.field public static final PLATFORM_TICKET_LIST_CHANGED:I = 0x3e0000

.field public static final PLATFORM_TICKET_LIST_REORDERED:I = 0x100000

.field public static final PLATFORM_TICKET_REMOVED:I = 0x40000

.field public static final PLATFORM_USER_ADDED:I = 0x2000

.field public static final PLATFORM_USER_CHANGED:I = 0x8000

.field public static final PLATFORM_USER_LIST_CHANGED:I = 0x1e400

.field public static final PLATFORM_USER_LIST_REORDERED:I = 0x10000

.field public static final PLATFORM_USER_REMOVED:I = 0x4000

.field public static final TICKET_ARRIVED:I = 0x200000

.field public static final TICKET_CHANGED:I = 0x531f7fa

.field public static final TICKET_COMPLETED:I = 0x4000000

.field public static final TICKET_CREATED:I = 0x1

.field public static final TICKET_DATA_APPENDED:I = 0x400000

.field public static final TICKET_DATA_CLEARED:I = 0x800000

.field public static final TICKET_DESTINATION_CHANGED:I = 0x40

.field public static final TICKET_DURATION_CHANGED:I = 0x10

.field public static final TICKET_ETA_CHANGED:I = 0x100

.field public static final TICKET_EXPIRED:I = 0x2

.field public static final TICKET_FAILED:I = 0x100000

.field public static final TICKET_FIRST_VIEWED:I = 0x4

.field public static final TICKET_INVALID_CODE:I = 0x800

.field public static final TICKET_INVITE_CHANGED:I = 0x1f000

.field public static final TICKET_INVITE_CREATED:I = 0x1000

.field public static final TICKET_INVITE_FAILED:I = 0x10000

.field public static final TICKET_INVITE_REMOVED:I = 0x8000

.field public static final TICKET_INVITE_SENT:I = 0x2000

.field public static final TICKET_INVITE_UPDATED:I = 0x4000

.field public static final TICKET_MESSAGE_CHANGED:I = 0x20

.field public static final TICKET_NOT_TRANSFERRED:I = 0x2000000

.field public static final TICKET_REQUEST_CREATED:I = 0x20000

.field public static final TICKET_REQUEST_FAILED:I = 0x80000

.field public static final TICKET_REQUEST_SENT:I = 0x40000

.field public static final TICKET_ROUTE_CHANGED:I = 0x200

.field public static final TICKET_TRACK_CHANGED:I = 0x80

.field public static final TICKET_TRANSFERRED:I = 0x1000000

.field public static final TICKET_TRAVEL_MODE_CHANGED:I = 0x400

.field public static final TICKET_VISIBILITY_CHANGED:I = 0x8

.field public static final TRIGGERS_TRIGGER_ACTIVATED:I = 0x4

.field public static final TRIGGERS_TRIGGER_ADDED:I = 0x1

.field public static final TRIGGERS_TRIGGER_REMOVED:I = 0x2

.field public static final USER_ACTIVE_TICKET_CHANGED:I = 0x2

.field public static final USER_ACTIVE_TICKET_RESIGNING:I = 0x40

.field public static final USER_AVATAR_FAILED_TO_UPLOAD:I = 0x20

.field public static final USER_AVATAR_UPLOADED:I = 0x10

.field public static final USER_CHANGED:I = 0x1f

.field public static final USER_NICKNAME_CHANGED:I = 0x1

.field public static final USER_TICKET_ADDED:I = 0x4

.field public static final USER_TICKET_REMOVED:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
