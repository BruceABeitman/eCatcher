.class public Lcom/glympse/android/hal/Reflection$_Instances;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static cS:Ljava/lang/Class;
.field private static dj:Ljava/lang/reflect/Method;
.field private static dk:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Instances;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_Instances;->cS:Ljava/lang/Class;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Instances;->dj:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/ContentResolver;)V
.registers 6
const/4 v1, 0x1
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Instances;->cR:Z
if-nez v0, :cond_5b
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Instances;->cR:Z
:try_start_7
const-string v0, "android.provider.CalendarContract$Instances"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->cS:Ljava/lang/Class;
:goto_f
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_60
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->cS:Ljava/lang/Class;
if-eqz v0, :cond_45
:try_start_13
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->cS:Ljava/lang/Class;
const-string v1, "query"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/content/ContentResolver;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, [Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x3
sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dj:Ljava/lang/reflect/Method;
:goto_34
:try_end_34
.catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_34} :catch_5e
:try_start_34
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->cS:Ljava/lang/Class;
const-string v1, "CONTENT_URI"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
sput-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
:goto_45
:try_end_45
.catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_45} :catch_5c
:cond_45
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
if-nez v0, :cond_5b
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_5b
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;
move-result-object v0
const-string v1, "instances/when"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
:cond_5b
return-void
:catch_5c
move-exception v0
goto :goto_45
:catch_5e
move-exception v0
goto :goto_34
:catch_60
move-exception v0
goto :goto_f
.end method
.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;JJ)Landroid/database/Cursor;
.registers 13
const/4 v6, 0x0
const/4 v3, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Instances;->a(Landroid/content/ContentResolver;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dj:Ljava/lang/reflect/Method;
if-eqz v0, :cond_2e
:try_start_9
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dj:Ljava/lang/reflect/Method;
const/4 v1, 0x0
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p0, v2, v4
const/4 v4, 0x1
aput-object p1, v2, v4
const/4 v4, 0x2
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v2, v4
const/4 v4, 0x3
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v2, v4
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
:goto_29
:try_end_29
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_29} :catch_2a
return-object v0
:catch_2a
move-exception v0
invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_2e
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
if-eqz v0, :cond_58
sget-object v0, Lcom/glympse/android/hal/Reflection$_Instances;->dk:Landroid/net/Uri;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
move-object v0, p0
move-object v2, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
goto :goto_29
:cond_58
move-object v0, v3
goto :goto_29
.end method