.class final Lcom/spotify/mobile/android/util/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:C

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Throwable;

.field private e:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V
    .registers 7

    iput-char p1, p0, Lcom/spotify/mobile/android/util/bp;->a:C

    iput-object p2, p0, Lcom/spotify/mobile/android/util/bp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/util/bp;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/util/bp;->d:Ljava/lang/Throwable;

    iput-wide p5, p0, Lcom/spotify/mobile/android/util/bp;->e:J

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .registers 6

    const/16 v3, 0x9

    iget-char v0, p0, Lcom/spotify/mobile/android/util/bp;->a:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/spotify/mobile/android/util/bo;->b()Ljava/util/Date;

    move-result-object v0

    iget-wide v1, p0, Lcom/spotify/mobile/android/util/bp;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    invoke-static {}, Lcom/spotify/mobile/android/util/bo;->c()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/util/bo;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bp;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_44

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bp;->d:Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    return-void
.end method
