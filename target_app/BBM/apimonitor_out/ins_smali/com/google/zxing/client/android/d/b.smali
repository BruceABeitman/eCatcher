.class public final Lcom/google/zxing/client/android/d/b;
.super Lcom/google/zxing/client/android/d/j;
.source "CalendarResultHandler.java"
.field private static final c:Ljava/lang/String;
.field private static final d:[I
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/google/zxing/client/android/d/b;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/d/b;->c:Ljava/lang/String;
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/google/zxing/client/android/y;->button_add_calendar:I
aput v2, v0, v1
sput-object v0, Lcom/google/zxing/client/android/d/b;->d:[I
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
return-void
.end method
.method private static a(ZLjava/util/Date;)Ljava/lang/String;
.registers 3
const/4 v0, 0x2
if-nez p1, :cond_5
const/4 v0, 0x0
:goto_4
return-object v0
:cond_5
if-eqz p0, :cond_10
invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;
move-result-object v0
:goto_b
invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
goto :goto_4
:cond_10
invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;
move-result-object v0
goto :goto_b
.end method
.method public final a()I
.registers 2
sget-object v0, Lcom/google/zxing/client/android/d/b;->d:[I
array-length v0, v0
return v0
.end method
.method public final a(I)I
.registers 3
sget-object v0, Lcom/google/zxing/client/android/d/b;->d:[I
aget v0, v0, p1
return v0
.end method
.method public final b()Ljava/lang/CharSequence;
.registers 9
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/g;
new-instance v3, Ljava/lang/StringBuilder;
const/16 v1, 0x64
invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, v0, Lcom/google/zxing/client/a/g;->a:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, v0, Lcom/google/zxing/client/a/g;->b:Ljava/util/Date;
iget-boolean v2, v0, Lcom/google/zxing/client/a/g;->c:Z
invoke-static {v2, v1}, Lcom/google/zxing/client/android/d/b;->a(ZLjava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-static {v2, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v2, v0, Lcom/google/zxing/client/a/g;->d:Ljava/util/Date;
if-eqz v2, :cond_3f
iget-boolean v4, v0, Lcom/google/zxing/client/a/g;->e:Z
if-eqz v4, :cond_58
invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_58
new-instance v1, Ljava/util/Date;
invoke-virtual {v2}, Ljava/util/Date;->getTime()J
move-result-wide v4
const-wide/32 v6, 0x5265c00
sub-long/2addr v4, v6
invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
:goto_36
iget-boolean v2, v0, Lcom/google/zxing/client/a/g;->e:Z
invoke-static {v2, v1}, Lcom/google/zxing/client/android/d/b;->a(ZLjava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
:cond_3f
iget-object v1, v0, Lcom/google/zxing/client/a/g;->f:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, v0, Lcom/google/zxing/client/a/g;->g:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, v0, Lcom/google/zxing/client/a/g;->h:[Ljava/lang/String;
invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v0, v0, Lcom/google/zxing/client/a/g;->i:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_58
move-object v1, v2
goto :goto_36
.end method
.method public final b(I)V
.registers 13
if-nez p1, :cond_5d
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/g;
iget-object v2, v0, Lcom/google/zxing/client/a/g;->i:Ljava/lang/String;
iget-object v1, v0, Lcom/google/zxing/client/a/g;->g:Ljava/lang/String;
if-eqz v1, :cond_8c
if-nez v2, :cond_5e
:goto_e
iget-object v4, v0, Lcom/google/zxing/client/a/g;->a:Ljava/lang/String;
iget-object v2, v0, Lcom/google/zxing/client/a/g;->b:Ljava/util/Date;
iget-boolean v5, v0, Lcom/google/zxing/client/a/g;->c:Z
iget-object v6, v0, Lcom/google/zxing/client/a/g;->d:Ljava/util/Date;
iget-object v7, v0, Lcom/google/zxing/client/a/g;->f:Ljava/lang/String;
iget-object v0, v0, Lcom/google/zxing/client/a/g;->h:[Ljava/lang/String;
new-instance v8, Landroid/content/Intent;
const-string v3, "android.intent.action.INSERT"
invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "vnd.android.cursor.item/event"
invoke-virtual {v8, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v2}, Ljava/util/Date;->getTime()J
move-result-wide v2
const-string v9, "beginTime"
invoke-virtual {v8, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
if-eqz v5, :cond_37
const-string v9, "allDay"
const/4 v10, 0x1
invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
:cond_37
if-nez v6, :cond_76
if-eqz v5, :cond_3f
const-wide/32 v5, 0x5265c00
add-long/2addr v2, v5
:cond_3f
:goto_3f
const-string v5, "endTime"
invoke-virtual {v8, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v2, "title"
invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "eventLocation"
invoke-virtual {v8, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "description"
invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
if-eqz v0, :cond_5a
const-string v1, "android.intent.extra.EMAIL"
invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
:cond_5a
:try_start_5a
invoke-virtual {p0, v8}, Lcom/google/zxing/client/android/d/b;->a(Landroid/content/Intent;)V
:goto_5d
:try_end_5d
.catch Landroid/content/ActivityNotFoundException; {:try_start_5a .. :try_end_5d} :catch_7b
:cond_5d
return-void
:cond_5e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0xa
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_e
:cond_76
invoke-virtual {v6}, Ljava/util/Date;->getTime()J
move-result-wide v2
goto :goto_3f
:catch_7b
move-exception v0
sget-object v0, Lcom/google/zxing/client/android/d/b;->c:Ljava/lang/String;
const-string v1, "No calendar app available that responds to android.intent.action.INSERT"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "android.intent.action.EDIT"
invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v8}, Lcom/google/zxing/client/android/d/b;->b(Landroid/content/Intent;)V
goto :goto_5d
:cond_8c
move-object v1, v2
goto :goto_e
.end method