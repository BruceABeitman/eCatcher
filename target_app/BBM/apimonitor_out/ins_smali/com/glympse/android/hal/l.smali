.class  Lcom/glympse/android/hal/l;
.super Ljava/lang/Object;
.source "CalendarProvider.java"
.implements Lcom/glympse/android/hal/GCalendarProvider;
.field private static final T:[Ljava/lang/String; = null
.field private static final U:I = 0x0
.field private static final V:I = 0x1
.field private static final W:I = 0x2
.field private static final X:I = 0x3
.field private static final Y:I = 0x4
.field private static final Z:I = 0x5
.field private static final aa:I = 0x6
.field private static final ab:[Ljava/lang/String; = null
.field private static final ac:I = 0x0
.field private static final ad:I = 0x1
.field protected P:Lcom/glympse/android/hal/GCalendarListener;
.field private Q:Lcom/glympse/android/hal/n;
.field private R:Ljava/util/concurrent/Future;
.field private S:Lcom/glympse/android/hal/GVector;
.field protected _handler:Lcom/glympse/android/core/GHandler;
.field protected e:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x7
new-array v0, v0, [Ljava/lang/String;
const-string v1, "event_id"
aput-object v1, v0, v3
const-string v1, "title"
aput-object v1, v0, v4
const-string v1, "begin"
aput-object v1, v0, v5
const/4 v1, 0x3
const-string v2, "eventTimezone"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "eventLocation"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "allDay"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "organizer"
aput-object v2, v0, v1
sput-object v0, Lcom/glympse/android/hal/l;->T:[Ljava/lang/String;
new-array v0, v5, [Ljava/lang/String;
const-string v1, "attendeeName"
aput-object v1, v0, v3
const-string v1, "attendeeEmail"
aput-object v1, v0, v4
sput-object v0, Lcom/glympse/android/hal/l;->ab:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/l;->S:Lcom/glympse/android/hal/GVector;
iput-object p1, p0, Lcom/glympse/android/hal/l;->e:Landroid/content/Context;
return-void
.end method
.method private static a(JLjava/lang/String;)J
.registers 7
:try_start_0
invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
if-eqz v0, :cond_19
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I
move-result v0
int-to-long v2, v0
invoke-virtual {v1, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_1a
move-result v0
int-to-long v0, v0
add-long/2addr v2, p0
sub-long p0, v2, v0
:goto_19
:cond_19
return-wide p0
:catch_1a
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_19
.end method
.method static synthetic b(JLjava/lang/String;)J
.registers 5
invoke-static {p0, p1, p2}, Lcom/glympse/android/hal/l;->a(JLjava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method static synthetic g()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/glympse/android/hal/l;->T:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic h()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/glympse/android/hal/l;->ab:[Ljava/lang/String;
return-object v0
.end method
.method public complete(Lcom/glympse/android/hal/GVector;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/hal/l;->S:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
iget-object v0, p0, Lcom/glympse/android/hal/l;->P:Lcom/glympse/android/hal/GCalendarListener;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/hal/l;->P:Lcom/glympse/android/hal/GCalendarListener;
invoke-interface {v0, p0}, Lcom/glympse/android/hal/GCalendarListener;->calendarChanged(Lcom/glympse/android/hal/GCalendarProvider;)V
:cond_e
return-void
.end method
.method public getEvents()Lcom/glympse/android/hal/GVector;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/l;->S:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public refresh()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Lcom/glympse/android/hal/n;
iget-object v1, p0, Lcom/glympse/android/hal/l;->P:Lcom/glympse/android/hal/GCalendarListener;
iget-object v2, p0, Lcom/glympse/android/hal/l;->e:Landroid/content/Context;
invoke-direct {v0, p0, v1, v2}, Lcom/glympse/android/hal/n;-><init>(Lcom/glympse/android/hal/l;Lcom/glympse/android/hal/GCalendarListener;Landroid/content/Context;)V
iput-object v0, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
invoke-static {}, Lcom/glympse/android/hal/GlympseThreadPool;->instance()Lcom/glympse/android/hal/GlympseThreadPool;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/l;->R:Ljava/util/concurrent/Future;
goto :goto_4
.end method
.method public start(Lcom/glympse/android/hal/GCalendarListener;Lcom/glympse/android/core/GHandler;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/hal/l;->P:Lcom/glympse/android/hal/GCalendarListener;
iput-object p2, p0, Lcom/glympse/android/hal/l;->_handler:Lcom/glympse/android/core/GHandler;
invoke-virtual {p0}, Lcom/glympse/android/hal/l;->refresh()V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
if-eqz v0, :cond_f
:try_start_5
iget-object v0, p0, Lcom/glympse/android/hal/l;->R:Ljava/util/concurrent/Future;
const/4 v1, 0x1
invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
:goto_b
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b} :catch_14
iput-object v2, p0, Lcom/glympse/android/hal/l;->Q:Lcom/glympse/android/hal/n;
iput-object v2, p0, Lcom/glympse/android/hal/l;->R:Ljava/util/concurrent/Future;
:cond_f
iput-object v2, p0, Lcom/glympse/android/hal/l;->P:Lcom/glympse/android/hal/GCalendarListener;
iput-object v2, p0, Lcom/glympse/android/hal/l;->_handler:Lcom/glympse/android/core/GHandler;
return-void
:catch_14
move-exception v0
goto :goto_b
.end method