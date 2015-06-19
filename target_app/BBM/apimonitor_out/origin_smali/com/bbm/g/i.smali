.class public final enum Lcom/bbm/g/i;
.super Ljava/lang/Enum;
.source "GroupCalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/i;

.field public static final enum b:Lcom/bbm/g/i;

.field public static final enum c:Lcom/bbm/g/i;

.field public static final enum d:Lcom/bbm/g/i;

.field public static final enum e:Lcom/bbm/g/i;

.field public static final enum f:Lcom/bbm/g/i;

.field public static final enum g:Lcom/bbm/g/i;

.field public static final enum h:Lcom/bbm/g/i;

.field public static final enum i:Lcom/bbm/g/i;

.field public static final enum j:Lcom/bbm/g/i;

.field public static final enum k:Lcom/bbm/g/i;

.field public static final enum l:Lcom/bbm/g/i;

.field public static final n:[Ljava/lang/String;

.field private static final synthetic o:[Lcom/bbm/g/i;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "ID"

    const-string v2, "_id"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->a:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "CALENDAR_ID"

    const-string v2, "calendar_id"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->b:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "URI"

    const-string v2, "_sync_id"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->c:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "TITLE"

    const-string v2, "title"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->d:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "DESCRIPTION"

    const-string v2, "description"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->e:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "DTSTART"

    const/4 v2, 0x5

    const-string v3, "dtstart"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->f:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "DTEND"

    const/4 v2, 0x6

    const-string v3, "dtend"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->g:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "TIMEZONE"

    const/4 v2, 0x7

    const-string v3, "eventTimezone"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->h:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "LOCATION"

    const/16 v2, 0x8

    const-string v3, "eventLocation"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->i:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "ALL_DAY"

    const/16 v2, 0x9

    const-string v3, "allDay"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->j:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "AVAILABILITY"

    const/16 v2, 0xa

    const-string v3, "availability"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->k:Lcom/bbm/g/i;

    new-instance v0, Lcom/bbm/g/i;

    const-string v1, "DELETED"

    const/16 v2, 0xb

    const-string v3, "deleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/i;->l:Lcom/bbm/g/i;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/bbm/g/i;

    sget-object v1, Lcom/bbm/g/i;->a:Lcom/bbm/g/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/i;->b:Lcom/bbm/g/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/i;->c:Lcom/bbm/g/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/g/i;->d:Lcom/bbm/g/i;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/g/i;->e:Lcom/bbm/g/i;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/g/i;->f:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/g/i;->g:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bbm/g/i;->h:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bbm/g/i;->i:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bbm/g/i;->j:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bbm/g/i;->k:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bbm/g/i;->l:Lcom/bbm/g/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/g/i;->o:[Lcom/bbm/g/i;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/bbm/g/i;->a:Lcom/bbm/g/i;

    iget-object v1, v1, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/i;->b:Lcom/bbm/g/i;

    iget-object v1, v1, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/i;->c:Lcom/bbm/g/i;

    iget-object v1, v1, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/g/i;->d:Lcom/bbm/g/i;

    iget-object v1, v1, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/g/i;->e:Lcom/bbm/g/i;

    iget-object v1, v1, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/g/i;->f:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/g/i;->g:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bbm/g/i;->h:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bbm/g/i;->i:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bbm/g/i;->j:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bbm/g/i;->k:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bbm/g/i;->l:Lcom/bbm/g/i;

    iget-object v2, v2, Lcom/bbm/g/i;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/g/i;->n:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bbm/g/i;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/i;
    .registers 2

    const-class v0, Lcom/bbm/g/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/i;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/i;
    .registers 1

    sget-object v0, Lcom/bbm/g/i;->o:[Lcom/bbm/g/i;

    invoke-virtual {v0}, [Lcom/bbm/g/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/i;

    return-object v0
.end method
