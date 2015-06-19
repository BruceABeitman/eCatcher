.class final Lcom/flurry/android/z;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/flurry/android/z;->a:Z
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_5
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.registers 4
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-result v0
goto :goto_5
.end method
.method static a()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/flurry/android/z;->a:Z
return-void
.end method
.method static a(Ljava/lang/String;)Z
.registers 2
const/4 v0, 0x3
invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
return v0
.end method
.method static b(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_5
.end method
.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.registers 4
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-result v0
goto :goto_5
.end method
.method static b()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/flurry/android/z;->a:Z
return-void
.end method
.method static c(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_5
.end method
.method static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.registers 4
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-result v0
goto :goto_5
.end method
.method static d(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_5
.end method
.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.registers 4
sget-boolean v0, Lcom/flurry/android/z;->a:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-result v0
goto :goto_5
.end method