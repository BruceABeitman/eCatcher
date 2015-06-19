.class public Lcom/baidu/location/f$c;
.super Ljava/lang/Object;
.field public static final for:Ljava/lang/String; = "com.baidu.locTest.LocationServer"
.field private a:[J
.field private b:Lcom/baidu/location/c$a;
.field private byte:I
.field private c:Ljava/lang/String;
.field private case:Lcom/baidu/location/f$c$a;
.field private final char:I
.field private d:Landroid/app/PendingIntent;
.field private do:Z
.field final synthetic e:Lcom/baidu/location/f;
.field private else:Z
.field private goto:Landroid/content/Context;
.field private if:Z
.field private int:I
.field private long:Ljava/lang/String;
.field private final new:J
.field private try:Landroid/app/AlarmManager;
.field private void:J
.method public constructor <init>(Lcom/baidu/location/f;Landroid/content/Context;)V
.registers 10
const/4 v3, 0x0
const/4 v2, 0x0
iput-object p1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0x521c820
iput-wide v0, p0, Lcom/baidu/location/f$c;->new:J
const/16 v0, 0xc8
iput v0, p0, Lcom/baidu/location/f$c;->char:I
iput-object v2, p0, Lcom/baidu/location/f$c;->try:Landroid/app/AlarmManager;
iput-object v2, p0, Lcom/baidu/location/f$c;->case:Lcom/baidu/location/f$c$a;
iput-object v2, p0, Lcom/baidu/location/f$c;->d:Landroid/app/PendingIntent;
iput-object v2, p0, Lcom/baidu/location/f$c;->goto:Landroid/content/Context;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/baidu/location/f$c;->void:J
const/16 v0, 0x14
new-array v0, v0, [J
iput-object v0, p0, Lcom/baidu/location/f$c;->a:[J
iput v3, p0, Lcom/baidu/location/f$c;->int:I
iput-object v2, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iput-object v2, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lcom/baidu/location/f$c;->byte:I
iput-boolean v3, p0, Lcom/baidu/location/f$c;->do:Z
iput-boolean v3, p0, Lcom/baidu/location/f$c;->if:Z
iput-boolean v3, p0, Lcom/baidu/location/f$c;->else:Z
iput-object v2, p0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/baidu/location/f$c;->goto:Landroid/content/Context;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/f$c;->void:J
const-string/jumbo v0, "alarm"
invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
iput-object v0, p0, Lcom/baidu/location/f$c;->try:Landroid/app/AlarmManager;
new-instance v0, Lcom/baidu/location/f$c$a;
invoke-direct {v0, p0}, Lcom/baidu/location/f$c$a;-><init>(Lcom/baidu/location/f$c;)V
iput-object v0, p0, Lcom/baidu/location/f$c;->case:Lcom/baidu/location/f$c$a;
iget-object v0, p0, Lcom/baidu/location/f$c;->case:Lcom/baidu/location/f$c$a;
new-instance v1, Landroid/content/IntentFilter;
const-string/jumbo v2, "com.baidu.locTest.LocationServer"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.baidu.locTest.LocationServer"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v1, 0x800
invoke-static {p2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f$c;->d:Landroid/app/PendingIntent;
iget-object v0, p0, Lcom/baidu/location/f$c;->try:Landroid/app/AlarmManager;
const/4 v1, 0x2
sget-wide v2, Lcom/baidu/location/j;->M:J
sget-wide v4, Lcom/baidu/location/j;->M:J
iget-object v6, p0, Lcom/baidu/location/f$c;->d:Landroid/app/PendingIntent;
invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
iget-object v0, p0, Lcom/baidu/location/f$c;->case:Lcom/baidu/location/f$c$a;
new-instance v1, Landroid/content/IntentFilter;
const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Lcom/baidu/location/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method static synthetic a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
return-object p1
.end method
.method public a()V
.registers 8
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/baidu/location/f$c;->if()V
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v1
if-nez v1, :cond_b
:goto_a
return-void
:cond_b
:try_start_b
new-instance v1, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v2
const-string/jumbo v3, "rw"
invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v2
const-wide/16 v4, 0x1
cmp-long v2, v2, v4
if-gez v2, :cond_27
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
goto :goto_a
:catch_25
move-exception v0
goto :goto_a
:cond_27
const-wide/16 v2, 0x0
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
mul-int/lit16 v3, v2, 0xc8
add-int/lit8 v3, v3, 0x4
add-int/lit8 v2, v2, 0x1
const-wide/16 v4, 0x0
invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
int-to-long v2, v3
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
iget v2, p0, Lcom/baidu/location/f$c;->byte:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget v2, p0, Lcom/baidu/location/f$c;->int:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget-object v2, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->do:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget-object v2, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->if:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget-object v2, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->for:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget-object v2, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->try:I
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/16 v2, 0xa0
new-array v2, v2, [B
:goto_77
iget v3, p0, Lcom/baidu/location/f$c;->int:I
if-ge v0, v3, :cond_f3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x7
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x6
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x8
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x5
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x10
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x4
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x18
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x3
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x20
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x2
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x28
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x1
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x30
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
mul-int/lit8 v3, v0, 0x8
add-int/lit8 v3, v3, 0x0
iget-object v4, p0, Lcom/baidu/location/f$c;->a:[J
aget-wide v4, v4, v0
const/16 v6, 0x38
shr-long/2addr v4, v6
long-to-int v4, v4
int-to-byte v4, v4
aput-byte v4, v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_77
:cond_f3
iget v0, p0, Lcom/baidu/location/f$c;->int:I
if-lez v0, :cond_ff
const/4 v0, 0x0
iget v3, p0, Lcom/baidu/location/f$c;->int:I
mul-int/lit8 v3, v3, 0x8
invoke-virtual {v1, v2, v0, v3}, Ljava/io/RandomAccessFile;->write([BII)V
:cond_ff
iget v0, p0, Lcom/baidu/location/f$c;->int:I
invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_107
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_107} :catch_25
goto/16 :goto_a
.end method
.method public byte()V
.registers 8
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/baidu/location/f$c;->do:Z
if-eqz v1, :cond_fe
iput v5, p0, Lcom/baidu/location/f$c;->byte:I
sget-wide v1, Lcom/baidu/location/j;->ac:J
const-wide/16 v3, 0x3e8
mul-long/2addr v1, v3
const-wide/16 v3, 0x3c
mul-long/2addr v1, v3
sput-wide v1, Lcom/baidu/location/j;->M:J
sget-wide v1, Lcom/baidu/location/j;->M:J
shr-long/2addr v1, v6
sput-wide v1, Lcom/baidu/location/j;->al:J
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v1
const/4 v2, 0x5
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v2
invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I
move-result v3
const/16 v4, 0x7d0
if-le v3, v4, :cond_2b
add-int/lit16 v0, v3, -0x7d0
:cond_2b
invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I
move-result v3
add-int/lit8 v3, v3, 0x1
const/16 v4, 0xb
invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I
move-result v4
const/16 v5, 0xc
invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I
move-result v1
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v5, ","
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, ","
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-wide v1, Lcom/baidu/location/j;->ac:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/baidu/location/f$c;->if:Z
if-eqz v1, :cond_ff
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "&tr="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/baidu/location/j;->do:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
:goto_aa
const-string/jumbo v0, "baidu_location_service"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "trace begin:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_start_c6
new-instance v0, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->a()Ljava/io/File;
move-result-object v1
const-string/jumbo v2, "rw"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V
iget v1, p0, Lcom/baidu/location/f$c;->byte:I
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
new-instance v0, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v1
const-string/jumbo v2, "rw"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:cond_fe
:try_end_fe
.catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_fe} :catch_11c
:goto_fe
return-void
:cond_ff
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "|T"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
goto :goto_aa
:catch_11c
move-exception v0
goto :goto_fe
.end method
.method public case()V
.registers 10
const/4 v0, 0x0
invoke-static {}, Lcom/baidu/location/f;->long()V
invoke-static {}, Lcom/baidu/location/f;->a()Ljava/io/File;
move-result-object v1
if-nez v1, :cond_b
:goto_a
return-void
:try_start_b
:cond_b
new-instance v3, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->a()Ljava/io/File;
move-result-object v1
const-string/jumbo v2, "rw"
invoke-direct {v3, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v1
const-wide/16 v4, 0x1
cmp-long v1, v1, v4
if-gez v1, :cond_27
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
goto :goto_a
:catch_25
move-exception v0
goto :goto_a
:cond_27
const-wide/16 v1, 0x0
invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v4
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v1
iget-boolean v5, p0, Lcom/baidu/location/f$c;->do:Z
if-eqz v5, :cond_dc
iget-boolean v5, p0, Lcom/baidu/location/f$c;->if:Z
if-eqz v5, :cond_dc
const-string/jumbo v5, "baidu_location_service"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "trace new info:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ":"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ":"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v5, v4, 0x1
rem-int/lit16 v5, v5, 0xc8
const-wide/16 v6, 0x4
invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V
add-int/lit8 v2, v2, 0x1
const/16 v6, 0xc8
if-lt v2, v6, :cond_84
const/16 v2, 0xc7
:cond_84
if-ne v5, v1, :cond_8f
if-lez v2, :cond_8f
add-int/lit8 v1, v1, 0x1
rem-int/lit16 v1, v1, 0xc8
invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
:cond_8f
const-string/jumbo v6, "baidu_location_service"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "trace new info:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ":"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v7, ":"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v6, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
mul-int/lit16 v1, v5, 0x320
add-int/lit8 v1, v1, 0x18
:goto_c3
add-int/lit8 v4, v1, 0x4
int-to-long v4, v4
invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v4, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v4
:goto_cf
array-length v5, v4
if-ge v0, v5, :cond_e1
aget-byte v5, v4, v0
xor-int/lit8 v5, v5, 0x5a
int-to-byte v5, v5
aput-byte v5, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_cf
:cond_dc
mul-int/lit16 v1, v4, 0x320
add-int/lit8 v1, v1, 0x18
goto :goto_c3
:cond_e1
const/4 v0, 0x0
array-length v5, v4
invoke-virtual {v3, v4, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V
array-length v0, v4
invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
int-to-long v0, v1
invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
array-length v0, v4
invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
iget-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
if-eqz v0, :cond_102
iget-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
if-eqz v0, :cond_102
const-wide/16 v0, 0x0
invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
:cond_102
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
:try_end_105
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_105} :catch_25
goto/16 :goto_a
.end method
.method public do()V
.registers 10
const/16 v0, 0x14
const/4 v2, 0x0
:try_start_3
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v3, "regular expire..."
invoke-static {v1, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/baidu/location/f$c;->new()V
iget-boolean v1, p0, Lcom/baidu/location/f$c;->else:Z
if-eqz v1, :cond_17
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/f$c;->else:Z
:cond_16
:goto_16
return-void
:cond_17
invoke-virtual {p0}, Lcom/baidu/location/f$c;->byte()V
const/4 v1, 0x0
iput v1, p0, Lcom/baidu/location/f$c;->int:I
const/4 v1, 0x0
iput-object v1, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget-object v1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v1}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v1
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v1}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v1
invoke-virtual {v1}, Lcom/baidu/location/e;->new()Z
:cond_31
iget-object v1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v1}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v1
if-eqz v1, :cond_7c
iget-object v1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v1}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v1
invoke-virtual {v1}, Lcom/baidu/location/e;->byte()Lcom/baidu/location/e$c;
move-result-object v4
if-eqz v4, :cond_7c
iget-object v1, v4, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-eqz v1, :cond_7c
iget-object v1, v4, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-le v1, v0, :cond_52
move v1, v0
:cond_52
move v3, v2
:goto_53
if-ge v3, v1, :cond_7a
iget-object v0, v4, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v5, ":"
const-string/jumbo v6, ""
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_68
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_68} :catch_99
move-result-object v5
:try_start_69
iget-object v6, p0, Lcom/baidu/location/f$c;->a:[J
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6b} :catch_9c
add-int/lit8 v0, v2, 0x1
const/16 v7, 0x10
:try_start_6f
invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v7
aput-wide v7, v6, v2
:try_end_75
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_75} :catch_9f
:goto_75
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v0
goto :goto_53
:cond_7a
:try_start_7a
iput v2, p0, Lcom/baidu/location/f$c;->int:I
:cond_7c
iget-object v0, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->long(Lcom/baidu/location/f;)Lcom/baidu/location/c;
move-result-object v0
if-eqz v0, :cond_90
iget-object v0, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->long(Lcom/baidu/location/f;)Lcom/baidu/location/c;
move-result-object v0
invoke-virtual {v0}, Lcom/baidu/location/c;->a()Lcom/baidu/location/c$a;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
:cond_90
iget-object v0, p0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/baidu/location/f$c;->for()V
:try_end_97
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_97} :catch_99
goto/16 :goto_16
:catch_99
move-exception v0
goto/16 :goto_16
:catch_9c
move-exception v0
move v0, v2
goto :goto_75
:catch_9f
move-exception v2
goto :goto_75
.end method
.method public for()V
.registers 21
const/4 v3, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/f$c;->if()V
const-string/jumbo v1, "baidu_location_service"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "trace1:"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_start_22
move-object/from16 v0, p0
iget-object v1, v0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-virtual {v1}, Lcom/baidu/location/f;->else()Z
move-result v1
if-eqz v1, :cond_4f
const-string/jumbo v1, "y2"
:goto_2f
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_53
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/baidu/location/f$c;->do:Z
if-nez v2, :cond_469
:try_start_35
new-instance v7, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v2
const-string/jumbo v4, "rw"
invoke-direct {v7, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v4
const-wide/16 v8, 0x1
cmp-long v2, v4, v8
if-gez v2, :cond_58
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
:goto_4e
:try_end_4e
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4e} :catch_463
return-void
:cond_4f
:try_start_4f
const-string/jumbo v1, "y1"
:try_end_52
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53
goto :goto_2f
:catch_53
move-exception v1
const-string/jumbo v1, "y"
goto :goto_2f
:cond_58
:try_start_58
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
move-result v8
const/4 v2, 0x0
move v6, v2
:goto_5e
if-ge v6, v8, :cond_469
mul-int/lit16 v2, v6, 0xc8
add-int/lit8 v2, v2, 0x4
int-to-long v4, v2
invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
move-result v9
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
move-result v10
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
move-result v11
const/16 v2, 0xc8
new-array v4, v2, [B
const/4 v2, 0x0
mul-int/lit8 v5, v11, 0x8
add-int/lit8 v5, v5, 0x10
invoke-virtual {v7, v4, v2, v5}, Ljava/io/RandomAccessFile;->read([BII)I
const/4 v2, 0x3
aget-byte v2, v4, v2
and-int/lit16 v2, v2, 0xff
const/4 v5, 0x2
aget-byte v5, v4, v5
shl-int/lit8 v5, v5, 0x8
const v12, 0xff00
and-int/2addr v5, v12
or-int/2addr v2, v5
const/4 v5, 0x1
aget-byte v5, v4, v5
shl-int/lit8 v5, v5, 0x10
const/high16 v12, 0xff
and-int/2addr v5, v12
or-int/2addr v2, v5
const/4 v5, 0x0
aget-byte v5, v4, v5
shl-int/lit8 v5, v5, 0x18
const/high16 v12, -0x100
and-int/2addr v5, v12
or-int/2addr v2, v5
const/4 v5, 0x7
aget-byte v5, v4, v5
and-int/lit16 v5, v5, 0xff
const/4 v12, 0x6
aget-byte v12, v4, v12
shl-int/lit8 v12, v12, 0x8
const v13, 0xff00
and-int/2addr v12, v13
or-int/2addr v5, v12
const/4 v12, 0x5
aget-byte v12, v4, v12
shl-int/lit8 v12, v12, 0x10
const/high16 v13, 0xff
and-int/2addr v12, v13
or-int/2addr v5, v12
const/4 v12, 0x4
aget-byte v12, v4, v12
shl-int/lit8 v12, v12, 0x18
const/high16 v13, -0x100
and-int/2addr v12, v13
or-int/2addr v5, v12
const/16 v12, 0xb
aget-byte v12, v4, v12
and-int/lit16 v12, v12, 0xff
const/16 v13, 0xa
aget-byte v13, v4, v13
shl-int/lit8 v13, v13, 0x8
const v14, 0xff00
and-int/2addr v13, v14
or-int/2addr v12, v13
const/16 v13, 0x9
aget-byte v13, v4, v13
shl-int/lit8 v13, v13, 0x10
const/high16 v14, 0xff
and-int/2addr v13, v14
or-int/2addr v12, v13
const/16 v13, 0x8
aget-byte v13, v4, v13
shl-int/lit8 v13, v13, 0x18
const/high16 v14, -0x100
and-int/2addr v13, v14
or-int/2addr v12, v13
const/16 v13, 0xf
aget-byte v13, v4, v13
and-int/lit16 v13, v13, 0xff
const/16 v14, 0xe
aget-byte v14, v4, v14
shl-int/lit8 v14, v14, 0x8
const v15, 0xff00
and-int/2addr v14, v15
or-int/2addr v13, v14
const/16 v14, 0xd
aget-byte v14, v4, v14
shl-int/lit8 v14, v14, 0x10
const/high16 v15, 0xff
and-int/2addr v14, v15
or-int/2addr v13, v14
const/16 v14, 0xc
aget-byte v14, v4, v14
shl-int/lit8 v14, v14, 0x18
const/high16 v15, -0x100
and-int/2addr v14, v15
or-int/2addr v13, v14
move-object/from16 v0, p0
iget-object v14, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v14, v14, Lcom/baidu/location/c$a;->do:I
if-ne v14, v2, :cond_3bb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->if:I
if-ne v2, v5, :cond_3bb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->for:I
if-ne v2, v12, :cond_3bb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->try:I
if-ne v2, v13, :cond_3bb
new-array v12, v11, [J
const/4 v2, 0x0
:goto_132
if-ge v2, v11, :cond_1bb
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
aget-byte v5, v4, v5
int-to-long v13, v5
const-wide/16 v15, 0xff
and-long/2addr v13, v15
const/16 v5, 0x38
shl-long/2addr v13, v5
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x1
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x30
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x2
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x28
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x3
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x20
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x4
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x18
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x5
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x10
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x6
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
const/16 v5, 0x8
shl-long/2addr v15, v5
or-long/2addr v13, v15
mul-int/lit8 v5, v2, 0x8
add-int/lit8 v5, v5, 0x10
add-int/lit8 v5, v5, 0x7
aget-byte v5, v4, v5
int-to-long v15, v5
const-wide/16 v17, 0xff
and-long v15, v15, v17
or-long/2addr v13, v15
aput-wide v13, v12, v2
add-int/lit8 v2, v2, 0x1
goto/16 :goto_132
:cond_1bb
const/4 v4, 0x0
const/4 v2, 0x0
move v5, v2
:goto_1be
move-object/from16 v0, p0
iget v2, v0, Lcom/baidu/location/f$c;->int:I
if-ge v5, v2, :cond_1e2
const/4 v2, 0x0
move/from16 v19, v2
move v2, v4
move/from16 v4, v19
:goto_1ca
if-ge v4, v11, :cond_1dd
move-object/from16 v0, p0
iget-object v13, v0, Lcom/baidu/location/f$c;->a:[J
aget-wide v13, v13, v5
aget-wide v15, v12, v4
cmp-long v13, v13, v15
if-nez v13, :cond_1da
add-int/lit8 v2, v2, 0x1
:cond_1da
add-int/lit8 v4, v4, 0x1
goto :goto_1ca
:cond_1dd
add-int/lit8 v4, v5, 0x1
move v5, v4
move v4, v2
goto :goto_1be
:cond_1e2
const/4 v2, 0x5
if-gt v4, v2, :cond_234
mul-int/lit8 v2, v4, 0x8
move-object/from16 v0, p0
iget v4, v0, Lcom/baidu/location/f$c;->int:I
add-int/2addr v4, v11
if-gt v2, v4, :cond_234
if-nez v11, :cond_1f6
move-object/from16 v0, p0
iget v2, v0, Lcom/baidu/location/f$c;->int:I
if-eqz v2, :cond_234
:cond_1f6
const/4 v2, 0x1
if-ne v11, v2, :cond_20e
move-object/from16 v0, p0
iget v2, v0, Lcom/baidu/location/f$c;->int:I
const/4 v4, 0x1
if-ne v2, v4, :cond_20e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v4, 0x0
aget-wide v4, v2, v4
const/4 v2, 0x0
aget-wide v13, v12, v2
cmp-long v2, v4, v13
if-eqz v2, :cond_234
:cond_20e
const/4 v2, 0x1
if-le v11, v2, :cond_3bb
move-object/from16 v0, p0
iget v2, v0, Lcom/baidu/location/f$c;->int:I
const/4 v4, 0x1
if-le v2, v4, :cond_3bb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v4, 0x0
aget-wide v4, v2, v4
const/4 v2, 0x0
aget-wide v13, v12, v2
cmp-long v2, v4, v13
if-nez v2, :cond_3bb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v4, 0x1
aget-wide v4, v2, v4
const/4 v2, 0x1
aget-wide v11, v12, v2
cmp-long v2, v4, v11
if-nez v2, :cond_3bb
:cond_234
const/4 v2, 0x1
add-int/lit8 v3, v10, 0x1
mul-int/lit16 v4, v6, 0xc8
add-int/lit8 v4, v4, 0x10
int-to-long v4, v4
invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
if-eqz v3, :cond_28f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "|"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iput-object v3, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
if-eqz v3, :cond_28f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iput-object v3, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
:cond_28f
const-string/jumbo v3, "baidu_location_service"
const-string/jumbo v4, "daily info:is same"
invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_298
:try_end_298
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_298} :catch_463
if-nez v2, :cond_393
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v2, v2, Lcom/baidu/location/c$a;->do:I
const/16 v3, 0x1cc
if-ne v2, v3, :cond_3c0
const-string/jumbo v2, "|x,"
:goto_2a7
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v3, v3, Lcom/baidu/location/c$a;->if:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v3, v3, Lcom/baidu/location/c$a;->for:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->b:Lcom/baidu/location/c$a;
iget v3, v3, Lcom/baidu/location/c$a;->try:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-wide/16 v2, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v5}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v5
if-eqz v5, :cond_300
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v5}, Lcom/baidu/location/f;->goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
move-result-object v5
invoke-virtual {v5}, Lcom/baidu/location/e;->char()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_300
const/16 v6, 0x10
:try_start_2fc
invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
:try_end_2ff
.catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2ff} :catch_460
move-result-wide v2
:cond_300
:goto_300
move-object/from16 v0, p0
iget v5, v0, Lcom/baidu/location/f$c;->int:I
const/4 v6, 0x1
if-ne v5, v6, :cond_3c5
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "w"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v6, 0x0
aget-wide v5, v5, v6
invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "k"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v6, 0x0
aget-wide v5, v5, v6
cmp-long v2, v5, v2
if-nez v2, :cond_466
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "k"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_350
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
if-eqz v1, :cond_390
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/baidu/location/f$c;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
:cond_390
invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/f$c;->a()V
:cond_393
const-string/jumbo v1, "baidu_location_service"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "trace2:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/f$c;->case()V
const/4 v1, 0x0
move-object/from16 v0, p0
iput-object v1, v0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
goto/16 :goto_4e
:cond_3bb
add-int/lit8 v2, v6, 0x1
move v6, v2
goto/16 :goto_5e
:cond_3c0
const-string/jumbo v2, "|x460,"
goto/16 :goto_2a7
:cond_3c5
move-object/from16 v0, p0
iget v5, v0, Lcom/baidu/location/f$c;->int:I
const/4 v6, 0x1
if-le v5, v6, :cond_466
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "w"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v6, 0x0
aget-wide v5, v5, v6
invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v6, 0x0
aget-wide v5, v5, v6
cmp-long v5, v5, v2
if-nez v5, :cond_410
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "k"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-wide/16 v2, 0x0
:cond_410
const-wide/16 v5, 0x0
cmp-long v5, v2, v5
if-lez v5, :cond_43b
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "k"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_350
:cond_43b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/baidu/location/f$c;->a:[J
const/4 v4, 0x1
aget-wide v3, v3, v4
invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_350
:catch_460
move-exception v5
goto/16 :goto_300
:catch_463
move-exception v1
goto/16 :goto_4e
:cond_466
move-object v2, v4
goto/16 :goto_350
:cond_469
move v2, v3
goto/16 :goto_298
.end method
.method public if()V
.registers 5
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->byte(Lcom/baidu/location/f;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_51
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;
invoke-static {v1}, Lcom/baidu/location/f;->byte(Lcom/baidu/location/f;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/baidu/location/f;->a(Ljava/io/File;)Ljava/io/File;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_50
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_31
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_31
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
new-instance v0, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v1
const-string/jumbo v2, "rw"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:goto_50
:cond_50
return-void
:cond_51
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/f;->a(Ljava/io/File;)Ljava/io/File;
:try_end_55
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56
goto :goto_50
:catch_56
move-exception v0
invoke-static {v3}, Lcom/baidu/location/f;->a(Ljava/io/File;)Ljava/io/File;
goto :goto_50
.end method
.method public int()V
.registers 1
return-void
.end method
.method public new()V
.registers 13
const/4 v0, 0x0
const/4 v11, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
iput-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
invoke-virtual {p0}, Lcom/baidu/location/f$c;->if()V
invoke-static {}, Lcom/baidu/location/f;->long()V
:try_start_c
new-instance v1, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->a()Ljava/io/File;
move-result-object v2
const-string/jumbo v3, "rw"
invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v2, 0x0
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v3
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J
move-result-wide v4
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v6
if-gez v2, :cond_3c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:goto_3b
return-void
:cond_3c
mul-int/lit16 v2, v3, 0x320
add-int/lit8 v2, v2, 0x18
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
const/16 v3, 0x2a8
if-le v2, v3, :cond_65
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_55
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_55} :catch_56
goto :goto_3b
:catch_56
move-exception v0
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "exception!!!"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v11, p0, Lcom/baidu/location/f$c;->do:Z
iput-boolean v11, p0, Lcom/baidu/location/f$c;->if:Z
goto :goto_3b
:cond_65
const/16 v3, 0x320
:try_start_67
new-array v3, v3, [B
const/4 v7, 0x0
invoke-virtual {v1, v3, v7, v2}, Ljava/io/RandomAccessFile;->read([BII)I
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v7
if-eq v2, v7, :cond_86
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v2, "trace true check fail"
invoke-static {v0, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
goto :goto_3b
:cond_86
:goto_86
array-length v7, v3
if-ge v0, v7, :cond_93
aget-byte v7, v3, v0
xor-int/lit8 v7, v7, 0x5a
int-to-byte v7, v7
aput-byte v7, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_86
:cond_93
new-instance v0, Ljava/lang/String;
const/4 v7, 0x0
invoke-direct {v0, v3, v7, v2}, Ljava/lang/String;-><init>([BII)V
iput-object v0, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
const-string/jumbo v2, "&tr="
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_b0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->if:Z
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
goto :goto_3b
:cond_b0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long v4, v2, v4
sget-wide v7, Lcom/baidu/location/j;->M:J
const-wide/16 v9, 0x3
mul-long/2addr v7, v9
sget-wide v9, Lcom/baidu/location/j;->al:J
sub-long/2addr v7, v9
cmp-long v0, v4, v7
if-lez v0, :cond_fd
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->do:Z
:goto_c5
const-wide/16 v4, 0xc
invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
iget v0, p0, Lcom/baidu/location/f$c;->byte:I
invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
new-instance v0, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/baidu/location/f;->for()Ljava/io/File;
move-result-object v1
const-string/jumbo v2, "rw"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I
move-result v1
if-nez v1, :cond_140
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/baidu/location/f$c;->do:Z
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "Day file number 0"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3b
:cond_fd
sget-wide v7, Lcom/baidu/location/j;->M:J
const-wide/16 v9, 0x2
mul-long/2addr v7, v9
sget-wide v9, Lcom/baidu/location/j;->al:J
sub-long/2addr v7, v9
cmp-long v0, v4, v7
if-lez v0, :cond_12a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "|"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f$c;->long:Ljava/lang/String;
add-int/lit8 v0, v6, 0x2
iput v0, p0, Lcom/baidu/location/f$c;->byte:I
goto :goto_c5
:cond_12a
sget-wide v7, Lcom/baidu/location/j;->M:J
sget-wide v9, Lcom/baidu/location/j;->al:J
sub-long/2addr v7, v9
cmp-long v0, v4, v7
if-lez v0, :cond_138
add-int/lit8 v0, v6, 0x1
iput v0, p0, Lcom/baidu/location/f$c;->byte:I
goto :goto_c5
:cond_138
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f$c;->else:Z
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
goto/16 :goto_3b
:cond_140
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_143
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_143} :catch_56
goto/16 :goto_3b
.end method
.method public try()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/f$c;->goto:Landroid/content/Context;
iget-object v1, p0, Lcom/baidu/location/f$c;->case:Lcom/baidu/location/f$c$a;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/baidu/location/f$c;->try:Landroid/app/AlarmManager;
iget-object v1, p0, Lcom/baidu/location/f$c;->d:Landroid/app/PendingIntent;
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/f;->a(Ljava/io/File;)Ljava/io/File;
return-void
.end method