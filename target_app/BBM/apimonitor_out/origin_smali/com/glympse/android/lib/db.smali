.class Lcom/glympse/android/lib/db;
.super Lcom/glympse/android/lib/ek;
.source "GroupInviteCreate.java"


# instance fields
.field private hm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/ek;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/db;->iy:Lcom/glympse/android/api/GEventSink;

    const/16 v0, 0xa

    iput v0, p0, Lcom/glympse/android/lib/db;->od:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/glympse/android/lib/db;->oe:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/glympse/android/lib/db;->of:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/glympse/android/lib/db;->og:I

    iput-object p3, p0, Lcom/glympse/android/lib/db;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    iput-object p1, p0, Lcom/glympse/android/lib/db;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/db;->hm:Ljava/lang/String;

    invoke-interface {p3}, Lcom/glympse/android/lib/GInvitePrivate;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/db;->oa:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/glympse/android/lib/db;->cd()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .registers 3

    const-string v0, "groups/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/db;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/create_invite"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
