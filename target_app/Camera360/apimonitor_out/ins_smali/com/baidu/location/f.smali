.class public final Lcom/baidu/location/f;
.super Landroid/app/Service;
.field static final B:I = 0x5c
.field static final D:I = 0x39
.field static final G:I = 0x34
.field static final I:I = 0x1a
.field static final K:I = 0x40
.field static final L:I = 0x1b
.field static final M:I = 0x3e
.field static final S:I = 0x3e8
.field static final U:I = 0x36
.field static final V:I = 0x51
.field static final W:I = 0x19
.field private static a:Ljava/lang/String; = null
.field static final aa:I = 0x15
.field static ac:Ljava/lang/String; = null
.field private static final af:I = 0xc8
.field static final ag:I = 0x2b
.field static final ah:I = 0xe
.field static final ai:I = 0xbb8
.field static final ak:I = 0x38
.field static final ao:I = 0x65
.field static final ap:F = 3.3f
.field static final aq:I = 0x3d
.field static final ar:I = 0x35
.field private static final at:I = 0x320
.field static final b:I = 0x3f
.field private static final byte:I = 0x18
.field static final c:I = 0xc
.field static final case:I = 0x2a
.field static final do:I = 0x1c
.field static final e:I = 0x41
.field static final else:I = 0x7d0
.field static final for:I = 0x16
.field static final g:I = 0xf
.field static final i:I = 0x37
.field static final int:I = 0x1f
.field private static j:Ljava/io/File; = null
.field private static k:Ljava/io/File; = null
.field static final l:I = 0xb
.field static final long:I = 0xd
.field static final p:I = 0x29
.field static final s:I = 0x17
.field static final t:I = 0x5b
.field public static final v:Ljava/lang/String; = "baidu_location_service"
.field static final void:I = 0x47
.field static final w:I = 0x18
.field static final x:I = 0xbb8
.field static final z:I = 0x33
.field private A:Ljava/lang/String;
.field private C:Lcom/baidu/location/e$c;
.field private E:J
.field private F:Lcom/baidu/location/e;
.field private H:Ljava/lang/String;
.field private J:Z
.field private N:Z
.field private O:Z
.field private P:J
.field private Q:Z
.field final R:Landroid/os/Handler;
.field private T:Landroid/database/sqlite/SQLiteDatabase;
.field private X:Ljava/lang/String;
.field private Y:Z
.field private Z:I
.field private ab:Lcom/baidu/location/b;
.field private ad:Z
.field private ae:Lcom/baidu/location/e$c;
.field private aj:Z
.field private al:Lcom/baidu/location/c$a;
.field private am:Z
.field final an:Landroid/os/Messenger;
.field private as:Ljava/lang/String;
.field private au:Lcom/baidu/location/a;
.field private char:Lcom/baidu/location/e$c;
.field private d:J
.field private f:Landroid/location/Location;
.field private goto:Z
.field private h:Ljava/lang/String;
.field private if:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:D
.field private new:Ljava/lang/String;
.field private o:D
.field private q:D
.field private r:Lcom/baidu/location/c;
.field private try:Lcom/baidu/location/c$a;
.field private u:Lcom/baidu/location/c$a;
.field private y:Lcom/baidu/location/f$c;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/baidu/tempdata"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/baidu/location/f;->ac:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/glb.dat"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/baidu/location/f;->a:Ljava/lang/String;
sput-object v2, Lcom/baidu/location/f;->j:Ljava/io/File;
sput-object v2, Lcom/baidu/location/f;->k:Ljava/io/File;
return-void
.end method
.method public constructor <init>()V
.registers 10
const-wide/16 v7, 0x0
const/4 v6, 0x1
const-wide/16 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/vm.dat"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f;->m:Ljava/lang/String;
new-instance v0, Lcom/baidu/location/f$d;
invoke-direct {v0, p0}, Lcom/baidu/location/f$d;-><init>(Lcom/baidu/location/f;)V
iput-object v0, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
new-instance v0, Landroid/os/Messenger;
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/baidu/location/f;->an:Landroid/os/Messenger;
iput-object v2, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
iput-object v2, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
iput-object v2, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
iput-object v2, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iput-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
iput-object v2, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
iput-object v2, p0, Lcom/baidu/location/f;->ae:Lcom/baidu/location/e$c;
iput-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
iput-object v2, p0, Lcom/baidu/location/f;->al:Lcom/baidu/location/c$a;
iput-object v2, p0, Lcom/baidu/location/f;->u:Lcom/baidu/location/c$a;
iput-object v2, p0, Lcom/baidu/location/f;->f:Landroid/location/Location;
iput-object v2, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
iput-object v2, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
iput-object v2, p0, Lcom/baidu/location/f;->H:Ljava/lang/String;
iput-boolean v3, p0, Lcom/baidu/location/f;->ad:Z
iput-boolean v6, p0, Lcom/baidu/location/f;->Y:Z
iput-boolean v3, p0, Lcom/baidu/location/f;->O:Z
iput-boolean v3, p0, Lcom/baidu/location/f;->aj:Z
iput-wide v7, p0, Lcom/baidu/location/f;->P:J
iput-wide v7, p0, Lcom/baidu/location/f;->d:J
iput-boolean v6, p0, Lcom/baidu/location/f;->N:Z
iput-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/f$c;
iput-object v2, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v0, "bdcltb09"
iput-object v0, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
iput-object v2, p0, Lcom/baidu/location/f;->A:Ljava/lang/String;
iput-object v2, p0, Lcom/baidu/location/f;->as:Ljava/lang/String;
iput-boolean v3, p0, Lcom/baidu/location/f;->Q:Z
iput-boolean v3, p0, Lcom/baidu/location/f;->goto:Z
iput-object v2, p0, Lcom/baidu/location/f;->X:Ljava/lang/String;
iput v3, p0, Lcom/baidu/location/f;->Z:I
iput-boolean v6, p0, Lcom/baidu/location/f;->J:Z
iput-wide v4, p0, Lcom/baidu/location/f;->o:D
iput-wide v4, p0, Lcom/baidu/location/f;->n:D
iput-wide v4, p0, Lcom/baidu/location/f;->q:D
iput-wide v7, p0, Lcom/baidu/location/f;->E:J
iput-boolean v3, p0, Lcom/baidu/location/f;->am:Z
return-void
.end method
.method static synthetic a()Ljava/io/File;
.registers 1
sget-object v0, Lcom/baidu/location/f;->k:Ljava/io/File;
return-object v0
.end method
.method static synthetic a(Ljava/io/File;)Ljava/io/File;
.registers 1
sput-object p0, Lcom/baidu/location/f;->j:Ljava/io/File;
return-object p0
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
const/4 v4, 0x0
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v2, "generate locdata ..."
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {v1}, Lcom/baidu/location/c$a;->do()Z
move-result v1
if-nez v1, :cond_23
:cond_17
iget-object v1, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v1}, Lcom/baidu/location/c;->a()Lcom/baidu/location/c$a;
move-result-object v1
iput-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
:cond_23
iget-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {v1}, Lcom/baidu/location/c$a;->a()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/baidu/location/f;->A:Ljava/lang/String;
iget-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
if-eqz v1, :cond_d5
const-string/jumbo v1, "baidu_location_service"
iget-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {v2}, Lcom/baidu/location/c$a;->if()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_3b
iget-object v1, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
if-eqz v1, :cond_47
iget-object v1, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
invoke-virtual {v1}, Lcom/baidu/location/e$c;->for()Z
move-result v1
if-nez v1, :cond_53
:cond_47
iget-object v1, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v1, :cond_53
iget-object v1, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v1}, Lcom/baidu/location/e;->byte()Lcom/baidu/location/e$c;
move-result-object v1
iput-object v1, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
:cond_53
iget-object v1, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
if-eqz v1, :cond_e0
const-string/jumbo v1, "baidu_location_service"
iget-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
invoke-virtual {v2}, Lcom/baidu/location/e$c;->else()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_63
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-eqz v1, :cond_eb
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v1}, Lcom/baidu/location/b;->new()Z
move-result v1
if-eqz v1, :cond_eb
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v1}, Lcom/baidu/location/b;->try()Landroid/location/Location;
move-result-object v1
iput-object v1, p0, Lcom/baidu/location/f;->f:Landroid/location/Location;
:goto_77
iget-object v1, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v1, :cond_81
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0}, Lcom/baidu/location/a;->byte()Ljava/lang/String;
move-result-object v0
:cond_81
const/4 v1, 0x3
invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)I
move-result v2
if-ne v1, v2, :cond_ee
const-string/jumbo v1, "&cn=32"
:goto_8b
iget-boolean v2, p0, Lcom/baidu/location/f;->Y:Z
if-eqz v2, :cond_a6
invoke-static {}, Lcom/baidu/location/k;->if()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_a6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_a6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p1, :cond_ca
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_ca
iget-object v1, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
iget-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
iget-object v3, p0, Lcom/baidu/location/f;->f:Landroid/location/Location;
invoke-static {v1, v2, v3, v0, v4}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_d5
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v2, "cellInfo null..."
invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3b
:cond_e0
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v2, "wifi list null"
invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_63
:cond_eb
iput-object v0, p0, Lcom/baidu/location/f;->f:Landroid/location/Location;
goto :goto_77
:cond_ee
const-string/jumbo v1, "&cn=%d"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v3}, Lcom/baidu/location/c;->new()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_8b
.end method
.method private a(Z)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {v0}, Lcom/baidu/location/c$a;->do()Z
move-result v0
if-nez v0, :cond_18
:cond_c
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v0}, Lcom/baidu/location/c;->a()Lcom/baidu/location/c$a;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
:cond_18
iget-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {v0}, Lcom/baidu/location/c$a;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/baidu/location/f;->do(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/baidu/location/f;->if(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(I)V
.registers 5
const/4 v2, 0x0
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on network exception"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on network exception"
invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
iput-object v2, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/baidu/location/f;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V
:cond_25
const/16 v0, 0x15
if-ne p1, v0, :cond_2c
invoke-direct {p0}, Lcom/baidu/location/f;->case()V
:cond_2c
return-void
.end method
.method private a(Landroid/os/Message;)V
.registers 5
if-eqz p1, :cond_6
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
if-nez v0, :cond_10
:cond_6
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "Gps updateloation is null"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/location/Location;
if-eqz v0, :cond_f
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v2, "on update gps..."
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Z)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_f
goto :goto_f
.end method
.method private a(Landroid/os/Message;I)V
.registers 14
const/high16 v10, 0x40a0
const/4 v3, 0x0
const/16 v9, 0x15
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on network success"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on network success"
invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
move-object v8, v0
check-cast v8, Ljava/lang/String;
const-string/jumbo v0, "baidu_location_service"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "network:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, v8, p2}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V
:cond_3f
invoke-static {v8}, Lcom/baidu/location/j;->do(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fd
if-ne p2, v9, :cond_f9
iput-object v8, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
:goto_49
const-string/jumbo v0, "ssid\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
const/high16 v1, -0x8000
if-eq v0, v1, :cond_107
iget-object v1, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
if-eqz v1, :cond_107
iget-object v1, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
invoke-virtual {v1, v0}, Lcom/baidu/location/e$c;->if(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
:goto_63
invoke-direct {p0, v8}, Lcom/baidu/location/f;->if(Ljava/lang/String;)V
const-string/jumbo v0, "a\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v0
const-wide/16 v2, 0x1
cmpl-double v2, v0, v2
if-eqz v2, :cond_97
const-string/jumbo v2, "b\":\""
const-string/jumbo v3, "\""
invoke-static {v8, v2, v3}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v2
const-string/jumbo v4, "c\":\""
const-string/jumbo v5, "\""
invoke-static {v8, v4, v5}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v4
const-string/jumbo v6, "b\":\""
const-string/jumbo v7, "\""
invoke-static {v8, v6, v7}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v6
invoke-static/range {v0 .. v7}, Lcom/baidu/location/k;->a(DDDD)V
:cond_97
const-string/jumbo v0, "rWifiN\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
const/16 v1, 0xf
if-le v0, v1, :cond_a7
sput v0, Lcom/baidu/location/j;->Y:I
:cond_a7
const-string/jumbo v0, "rWifiT\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
const/16 v1, 0x1f4
if-le v0, v1, :cond_b7
sput v0, Lcom/baidu/location/j;->S:I
:cond_b7
const-string/jumbo v0, "hSpeedDis\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
move-result v0
cmpl-float v1, v0, v10
if-lez v1, :cond_c7
sput v0, Lcom/baidu/location/j;->Q:F
:cond_c7
const-string/jumbo v0, "mSpeedDis\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
move-result v0
cmpl-float v1, v0, v10
if-lez v1, :cond_d7
sput v0, Lcom/baidu/location/j;->ai:F
:cond_d7
const-string/jumbo v0, "mWifiR\":\""
const-string/jumbo v1, "\""
invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
move-result v0
const/high16 v1, 0x3f80
cmpg-float v1, v0, v1
if-gez v1, :cond_f3
float-to-double v1, v0
const-wide v3, 0x3fc999999999999aL
cmpl-double v1, v1, v3
if-lez v1, :cond_f3
sput v0, Lcom/baidu/location/j;->byte:F
:cond_f3
if-ne p2, v9, :cond_f8
invoke-direct {p0}, Lcom/baidu/location/f;->case()V
:cond_f8
return-void
:cond_f9
iput-object v8, p0, Lcom/baidu/location/f;->H:Ljava/lang/String;
goto/16 :goto_49
:cond_fd
if-ne p2, v9, :cond_103
iput-object v3, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
goto/16 :goto_49
:cond_103
iput-object v3, p0, Lcom/baidu/location/f;->H:Ljava/lang/String;
goto/16 :goto_49
:cond_107
iput-object v3, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
goto/16 :goto_63
.end method
.method static synthetic a(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->try()V
return-void
.end method
.method static synthetic a(Lcom/baidu/location/f;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->new(Landroid/os/Message;)V
return-void
.end method
.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/baidu/location/f;->a(Landroid/os/Message;I)V
return-void
.end method
.method private a(Lcom/baidu/location/c$a;)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-nez v2, :cond_7
:goto_6
:cond_6
return v1
:cond_7
iget-object v2, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v2}, Lcom/baidu/location/c;->a()Lcom/baidu/location/c$a;
move-result-object v2
iput-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
iget-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
if-eq v2, p1, :cond_6
iget-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
if-eqz v2, :cond_19
if-nez p1, :cond_1b
:cond_19
move v1, v0
goto :goto_6
:cond_1b
iget-object v2, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
invoke-virtual {p1, v2}, Lcom/baidu/location/c$a;->a(Lcom/baidu/location/c$a;)Z
move-result v2
if-nez v2, :cond_25
:goto_23
move v1, v0
goto :goto_6
:cond_25
move v0, v1
goto :goto_23
.end method
.method private a(Lcom/baidu/location/e$c;)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-nez v2, :cond_7
:goto_6
:cond_6
return v1
:cond_7
iget-object v2, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v2}, Lcom/baidu/location/e;->byte()Lcom/baidu/location/e$c;
move-result-object v2
iput-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
iget-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
if-eq p1, v2, :cond_6
iget-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
if-eqz v2, :cond_19
if-nez p1, :cond_1b
:cond_19
move v1, v0
goto :goto_6
:cond_1b
iget-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
invoke-virtual {p1, v2}, Lcom/baidu/location/e$c;->a(Lcom/baidu/location/e$c;)Z
move-result v2
if-nez v2, :cond_25
:goto_23
move v1, v0
goto :goto_6
:cond_25
move v0, v1
goto :goto_23
.end method
.method static synthetic a(Lcom/baidu/location/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/f;->aj:Z
return p1
.end method
.method private b()V
.registers 3
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on switch gps ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-nez v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0}, Lcom/baidu/location/a;->for()Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-nez v0, :cond_23
new-instance v0, Lcom/baidu/location/b;
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-direct {v0, p0, v1}, Lcom/baidu/location/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
:cond_23
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->k()V
goto :goto_d
:cond_29
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->l()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
goto :goto_d
.end method
.method static synthetic b(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->c()V
return-void
.end method
.method static synthetic byte(Lcom/baidu/location/f;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->m:Ljava/lang/String;
return-object v0
.end method
.method private byte()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/baidu/location/f;->O:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/f;->P:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x3e8
cmp-long v0, v0, v2
if-gez v0, :cond_2c
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "request too frequency ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/baidu/location/f;->case()V
goto :goto_6
:cond_2c
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "start network locating ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "start network locating ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v4, p0, Lcom/baidu/location/f;->O:Z
iget-object v0, p0, Lcom/baidu/location/f;->al:Lcom/baidu/location/c$a;
invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/c$a;)Z
move-result v0
iput-boolean v0, p0, Lcom/baidu/location/f;->J:Z
iget-object v0, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/e$c;)Z
move-result v0
if-nez v0, :cond_63
iget-boolean v0, p0, Lcom/baidu/location/f;->J:Z
if-nez v0, :cond_63
iget-object v0, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/baidu/location/f;->case()V
goto :goto_6
:cond_63
invoke-direct {p0, v5}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_92
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "{\"result\":{\"time\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\",\"error\":\"62\"}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v1, v0}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/baidu/location/f;->case()V
goto/16 :goto_6
:cond_92
iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
if-eqz v1, :cond_ab
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v5, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
:cond_ab
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Ljava/lang/String;Landroid/os/Handler;)Z
move-result v0
if-eqz v0, :cond_ca
iget-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
iput-object v0, p0, Lcom/baidu/location/f;->al:Lcom/baidu/location/c$a;
iget-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
iput-object v0, p0, Lcom/baidu/location/f;->char:Lcom/baidu/location/e$c;
:goto_bb
iget-boolean v0, p0, Lcom/baidu/location/f;->Y:Z
if-ne v0, v4, :cond_c2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/f;->Y:Z
:cond_c2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/f;->P:J
goto/16 :goto_6
:cond_ca
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "request error .."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_bb
.end method
.method private c()V
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0}, Lcom/baidu/location/a;->new()V
:cond_9
return-void
.end method
.method static synthetic c(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->b()V
return-void
.end method
.method private case()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/f;->O:Z
invoke-direct {p0}, Lcom/baidu/location/f;->void()V
return-void
.end method
.method static synthetic case(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->do()V
return-void
.end method
.method private char()V
.registers 2
:try_start_0
sget-boolean v0, Lcom/baidu/location/j;->n:Z
if-eqz v0, :cond_f
sget-boolean v0, Lcom/baidu/location/j;->G:Z
if-eqz v0, :cond_f
new-instance v0, Lcom/baidu/location/f$c;
invoke-direct {v0, p0, p0}, Lcom/baidu/location/f$c;-><init>(Lcom/baidu/location/f;Landroid/content/Context;)V
iput-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/f$c;
:goto_f
:cond_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
goto :goto_f
.end method
.method static synthetic char(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->if()V
return-void
.end method
.method private d()V
.registers 5
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/ls.db"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_2b
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_2b
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_34
:try_start_31
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:goto_34
:cond_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_64
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_63
const/4 v0, 0x0
invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_63
return-void
:catch_64
move-exception v0
goto :goto_34
.end method
.method static synthetic do(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/f$c;
return-object v0
.end method
.method private do()V
.registers 3
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on new wifi ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/baidu/location/f;->aj:Z
if-eqz v0, :cond_13
invoke-direct {p0}, Lcom/baidu/location/f;->byte()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/f;->aj:Z
:cond_13
return-void
.end method
.method private do(Landroid/os/Message;)V
.registers 6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/f;->d:J
sub-long/2addr v0, v2
const-wide/16 v2, 0xbb8
cmp-long v0, v0, v2
if-gez v0, :cond_24
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "request too frequency ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->H:Ljava/lang/String;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->H:Ljava/lang/String;
const/16 v2, 0x1a
invoke-virtual {v0, v1, v2}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V
:goto_23
:cond_23
return-void
:cond_24
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a;->a(Landroid/os/Message;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
if-eqz v1, :cond_4c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;
:cond_4c
invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)I
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-static {v0, v1}, Lcom/baidu/location/g;->if(Ljava/lang/String;Landroid/os/Handler;)Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/baidu/location/f;->try:Lcom/baidu/location/c$a;
iput-object v0, p0, Lcom/baidu/location/f;->u:Lcom/baidu/location/c$a;
iget-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/e$c;
iput-object v0, p0, Lcom/baidu/location/f;->ae:Lcom/baidu/location/e$c;
:goto_5f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/f;->d:J
goto :goto_23
:cond_66
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "request poi error .."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5f
.end method
.method static synthetic do(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->if(Landroid/os/Message;)V
return-void
.end method
.method private do(Ljava/lang/String;)V
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v0, :cond_7
if-nez p1, :cond_13
:cond_7
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "db is null..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v4, p0, Lcom/baidu/location/f;->Q:Z
:cond_12
:goto_12
return-void
:cond_13
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "LOCATING..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/f;->E:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x5dc
cmp-long v0, v0, v2
if-ltz v0, :cond_12
iget-object v0, p0, Lcom/baidu/location/f;->as:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
iput-boolean v4, p0, Lcom/baidu/location/f;->Q:Z
:try_start_33
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "select * from "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " where id = \""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
iput-object p1, p0, Lcom/baidu/location/f;->as:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/baidu/location/f;->E:J
if-eqz v0, :cond_12
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_ee
const-string/jumbo v1, "baidu_location_service"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "lookup DB success:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/baidu/location/f;->as:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v1
const-wide v3, 0x40934dbaacd9e83eL
sub-double/2addr v1, v3
iput-wide v1, p0, Lcom/baidu/location/f;->o:D
const/4 v1, 0x2
invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v1
const-wide v3, 0x40b0e60000000000L
sub-double/2addr v1, v3
iput-wide v1, p0, Lcom/baidu/location/f;->q:D
const/4 v1, 0x3
invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v1
const-wide v3, 0x40a27ea4b5dcc63fL
sub-double/2addr v1, v3
iput-wide v1, p0, Lcom/baidu/location/f;->n:D
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/baidu/location/f;->Q:Z
const-string/jumbo v1, "baidu_location_service"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "lookup DB success:x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/baidu/location/f;->o:D
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "y"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/baidu/location/f;->n:D
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "r"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/baidu/location/f;->q:D
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:cond_ee
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_f1
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_f1} :catch_f3
goto/16 :goto_12
:catch_f3
move-exception v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/f;->E:J
goto/16 :goto_12
.end method
.method static synthetic else(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->byte()V
return-void
.end method
.method static synthetic for()Ljava/io/File;
.registers 1
sget-object v0, Lcom/baidu/location/f;->j:Ljava/io/File;
return-object v0
.end method
.method private for(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/baidu/location/f;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/baidu/location/a;->a(Ljava/lang/String;Landroid/os/Message;)V
goto :goto_4
.end method
.method static synthetic for(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->goto()V
return-void
.end method
.method static synthetic for(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->int(Landroid/os/Message;)V
return-void
.end method
.method static synthetic goto(Lcom/baidu/location/f;)Lcom/baidu/location/e;
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
return-object v0
.end method
.method private goto()V
.registers 3
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on new cell ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private if(Z)Ljava/lang/String;
.registers 10
const/4 v2, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x0
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/baidu/location/f;->Q:Z
if-eqz v0, :cond_a3
if-eqz p1, :cond_56
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "{\"result\":{\"time\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v2, [Ljava/lang/Object;
iget-wide v2, p0, Lcom/baidu/location/f;->o:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v5
iget-wide v2, p0, Lcom/baidu/location/f;->n:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v4
iget-wide v2, p0, Lcom/baidu/location/f;->q:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v6
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v1, v7
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_55
return-object v0
:cond_56
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "{\"result\":{\"time\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v2, [Ljava/lang/Object;
iget-wide v2, p0, Lcom/baidu/location/f;->o:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v5
iget-wide v2, p0, Lcom/baidu/location/f;->n:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v4
iget-wide v2, p0, Lcom/baidu/location/f;->q:D
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v1, v6
iget-boolean v2, p0, Lcom/baidu/location/f;->J:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v1, v7
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_55
:cond_a3
if-eqz p1, :cond_c5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "{\"result\":{\"time\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\",\"error\":\"67\"}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_55
:cond_c5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "{\"result\":{\"time\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\",\"error\":\"63\"}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_55
.end method
.method private if()V
.registers 5
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on new gps..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->try()Landroid/location/Location;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v1}, Lcom/baidu/location/b;->new()Z
move-result v1
if-eqz v1, :cond_4d
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Z)Z
move-result v1
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v1, :cond_38
iget-object v1, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v1}, Lcom/baidu/location/e;->a()Z
:cond_38
iget-object v1, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v1}, Lcom/baidu/location/c;->a()Lcom/baidu/location/c$a;
move-result-object v1
iget-object v2, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v2}, Lcom/baidu/location/e;->int()Lcom/baidu/location/e$c;
move-result-object v2
iget-object v3, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v3}, Lcom/baidu/location/a;->byte()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v0, v3}, Lcom/baidu/location/k;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;)V
:cond_4d
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->new()Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v1}, Lcom/baidu/location/b;->int()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/baidu/location/a;->if(Ljava/lang/String;)V
goto :goto_4
.end method
.method private if(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a;->int(Landroid/os/Message;)V
:cond_9
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->case()V
:cond_12
iget-boolean v0, p0, Lcom/baidu/location/f;->N:Z
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-static {v0}, Lcom/baidu/location/g;->for(Landroid/os/Handler;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/f;->N:Z
:cond_1e
return-void
.end method
.method static synthetic if(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->for(Landroid/os/Message;)V
return-void
.end method
.method private if(Ljava/lang/String;)V
.registers 15
const/4 v1, 0x1
const/4 v0, 0x0
const-wide/16 v3, 0x0
iget-object v2, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v2, :cond_c
iget-boolean v2, p0, Lcom/baidu/location/f;->J:Z
if-nez v2, :cond_d
:goto_c
:cond_c
return-void
:cond_d
const/4 v2, 0x0
:try_start_e
const-string/jumbo v5, "baidu_location_service"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "DB:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "result"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v7, "error"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
const/16 v7, 0xa1
if-ne v6, v7, :cond_154
const-string/jumbo v6, "content"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v5, "clf"
invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_18b
const-string/jumbo v1, "clf"
invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "0"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_136
const-string/jumbo v1, "point"
invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v2, "x"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v4
const-string/jumbo v2, "y"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v2
const-string/jumbo v1, "radius"
invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
:goto_8b
const-string/jumbo v6, "baidu_location_service"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "DB PARSE:x"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "y"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "R"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_bb
:try_end_bb
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_bb} :catch_17f
if-nez v0, :cond_c
const-wide v6, 0x40934dbaacd9e83eL
add-double/2addr v4, v6
const-wide v6, 0x40a27ea4b5dcc63fL
add-double/2addr v2, v6
const v0, 0x45873000
add-float/2addr v0, v1
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v6, "time"
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v4
invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v4, "tag"
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
const-string/jumbo v0, "type"
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:try_start_f0
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
iget-object v2, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "id = \""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/baidu/location/f;->A:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
if-gtz v0, :cond_c
const-string/jumbo v0, "id"
iget-object v2, p0, Lcom/baidu/location/f;->A:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
iget-object v2, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "insert DB success!"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_131
.catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_131} :catch_133
goto/16 :goto_c
:catch_133
move-exception v0
goto/16 :goto_c
:cond_136
:try_start_136
const-string/jumbo v2, "\\|"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v2, v1, v2
invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v4
const/4 v2, 0x1
aget-object v2, v1, v2
invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v2
const/4 v6, 0x2
aget-object v1, v1, v6
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
goto/16 :goto_8b
:cond_154
const/16 v0, 0xa7
if-ne v6, v0, :cond_18b
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
iget-object v1, p0, Lcom/baidu/location/f;->if:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "id = \""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/baidu/location/f;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_17d
.catch Ljava/lang/Exception; {:try_start_136 .. :try_end_17d} :catch_17f
goto/16 :goto_c
:catch_17f
move-exception v0
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "DB PARSE:exp!"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_c
:cond_18b
move v0, v1
move v1, v2
move-wide v9, v3
move-wide v11, v3
move-wide v4, v11
move-wide v2, v9
goto/16 :goto_bb
.end method
.method static synthetic if(Lcom/baidu/location/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/f;->ad:Z
return v0
.end method
.method private int()V
.registers 2
invoke-static {p0}, Lcom/baidu/location/g;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_9
invoke-static {}, Lcom/baidu/location/g;->f()V
:cond_9
return-void
.end method
.method private int(Landroid/os/Message;)V
.registers 6
const/4 v2, 0x1
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on request location ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "on request location ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-nez v0, :cond_18
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a;->do(Landroid/os/Message;)I
move-result v0
if-ne v0, v2, :cond_41
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->new()Z
move-result v0
if-eqz v0, :cond_41
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "send gps location to client ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v1}, Lcom/baidu/location/b;->int()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/baidu/location/a;->a(Ljava/lang/String;Landroid/os/Message;)V
goto :goto_17
:cond_41
iget-boolean v0, p0, Lcom/baidu/location/f;->Y:Z
if-eqz v0, :cond_49
invoke-direct {p0}, Lcom/baidu/location/f;->byte()V
goto :goto_17
:cond_49
iget-boolean v0, p0, Lcom/baidu/location/f;->O:Z
if-nez v0, :cond_17
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->new()Z
move-result v0
if-eqz v0, :cond_69
iput-boolean v2, p0, Lcom/baidu/location/f;->aj:Z
iget-object v0, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
new-instance v1, Lcom/baidu/location/f$b;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/baidu/location/f$b;-><init>(Lcom/baidu/location/f;Lcom/baidu/location/f$1;)V
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_17
:cond_69
invoke-direct {p0}, Lcom/baidu/location/f;->byte()V
goto :goto_17
.end method
.method static synthetic int(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->a(Landroid/os/Message;)V
return-void
.end method
.method static synthetic int(Lcom/baidu/location/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/f;->aj:Z
return v0
.end method
.method static synthetic long(Lcom/baidu/location/f;)Lcom/baidu/location/c;
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
return-object v0
.end method
.method public static long()V
.registers 4
const/4 v3, 0x0
:try_start_1
sget-object v0, Lcom/baidu/location/f;->a:Ljava/lang/String;
if-eqz v0, :cond_57
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/baidu/location/f;->k:Ljava/io/File;
sget-object v0, Lcom/baidu/location/f;->k:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_56
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_26
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_26
sget-object v0, Lcom/baidu/location/f;->k:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
new-instance v0, Ljava/io/RandomAccessFile;
sget-object v1, Lcom/baidu/location/f;->k:Ljava/io/File;
const-string/jumbo v2, "rw"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:goto_56
:cond_56
return-void
:cond_57
const/4 v0, 0x0
sput-object v0, Lcom/baidu/location/f;->k:Ljava/io/File;
:try_end_5a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_5b
goto :goto_56
:catch_5b
move-exception v0
sput-object v3, Lcom/baidu/location/f;->k:Ljava/io/File;
goto :goto_56
.end method
.method static synthetic new(Lcom/baidu/location/f;)Lcom/baidu/location/a;
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
return-object v0
.end method
.method public static new()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "read trace log1.."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
.end method
.method private new(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a;->if(Landroid/os/Message;)V
:cond_9
return-void
.end method
.method static synthetic new(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->try(Landroid/os/Message;)V
return-void
.end method
.method private try()V
.registers 1
return-void
.end method
.method private try(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a;->for(Landroid/os/Message;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->for()V
:cond_15
const/4 v0, 0x0
iput-object v0, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
return-void
.end method
.method static synthetic try(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->int()V
return-void
.end method
.method static synthetic try(Lcom/baidu/location/f;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/f;->do(Landroid/os/Message;)V
return-void
.end method
.method private void()V
.registers 2
iget-object v0, p0, Lcom/baidu/location/f;->new:Ljava/lang/String;
if-eqz v0, :cond_d
invoke-static {p0}, Lcom/baidu/location/g;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {}, Lcom/baidu/location/g;->f()V
:cond_d
return-void
.end method
.method static synthetic void(Lcom/baidu/location/f;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/f;->char()V
return-void
.end method
.method public else()Z
.registers 2
const-string/jumbo v0, "keyguard"
invoke-virtual {p0, v0}, Lcom/baidu/location/f;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/KeyguardManager;
invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
move-result v0
return v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/baidu/location/f;->an:Landroid/os/Messenger;
invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 4
const-string v1, " + Lcom/baidu/location/f; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
new-instance v0, Lcom/baidu/location/f$a;
invoke-direct {v0, p0, p0}, Lcom/baidu/location/f$a;-><init>(Lcom/baidu/location/f;Landroid/content/Context;)V
invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
new-instance v0, Lcom/baidu/location/c;
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-direct {v0, p0, v1}, Lcom/baidu/location/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
new-instance v0, Lcom/baidu/location/e;
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-direct {v0, p0, v1}, Lcom/baidu/location/e;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
new-instance v0, Lcom/baidu/location/a;
iget-object v1, p0, Lcom/baidu/location/f;->R:Landroid/os/Handler;
invoke-direct {v0, v1}, Lcom/baidu/location/a;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/baidu/location/f;->au:Lcom/baidu/location/a;
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v0}, Lcom/baidu/location/c;->do()V
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->try()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/f;->ad:Z
iput-boolean v2, p0, Lcom/baidu/location/f;->O:Z
iput-boolean v2, p0, Lcom/baidu/location/f;->aj:Z
:try_start_35
invoke-direct {p0}, Lcom/baidu/location/f;->d()V
:try_end_38
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_60
:goto_38
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "OnCreate"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "baidu location service start1 ..."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v1, " - Lcom/baidu/location/f; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_60
move-exception v0
goto :goto_38
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/baidu/location/f; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/baidu/location/f;->r:Lcom/baidu/location/c;
invoke-virtual {v0}, Lcom/baidu/location/c;->byte()V
:cond_a
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/baidu/location/f;->F:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->else()V
:cond_13
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/baidu/location/f;->ab:Lcom/baidu/location/b;
invoke-virtual {v0}, Lcom/baidu/location/b;->l()V
:cond_1c
invoke-static {}, Lcom/baidu/location/k;->a()V
iput-boolean v1, p0, Lcom/baidu/location/f;->O:Z
iput-boolean v1, p0, Lcom/baidu/location/f;->aj:Z
iput-boolean v1, p0, Lcom/baidu/location/f;->ad:Z
iget-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/f$c;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/f$c;
invoke-virtual {v0}, Lcom/baidu/location/f$c;->try()V
:cond_2e
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/baidu/location/f;->T:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_37
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "baidu location service stop ..."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
const-string v1, " - Lcom/baidu/location/f; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 6
const-string/jumbo v0, "baidu_location_service"
const-string/jumbo v1, "onStratCommandNotSticky"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x2
return v0
.end method