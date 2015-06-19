.class public final Lcom/google/android/gms/wallet/o;
.super Ljava/lang/Object;
.field public static final a:I = 0x1
.field public static final b:Ljava/lang/String; = "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"
.field public static final c:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"
.field public static final d:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_FULL_WALLET"
.field public static final e:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_ERROR_CODE"
.field public static final f:I = 0x192
.field public static final g:I = 0x194
.field public static final h:I = 0x195
.field public static final i:I = 0x196
.field public static final j:I = 0x199
.field public static final k:I = 0x19a
.field public static final l:I = 0x19b
.field public static final m:I = 0x19c
.field public static final n:I = 0x19d
.field public static final o:I = 0x0
.field public static final p:I = 0x2
.field public static final q:I = 0x1
.field public static final r:I = 0x0
.field public static final s:I = 0x1
.field public static final t:Ljava/lang/String; = "com.google.android.gms.wallet.ENABLE_WALLET_OPTIMIZATION"
.field public static final u:Landroid/accounts/Account;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Landroid/accounts/Account;
const-string v1, "ACCOUNT_NO_WALLET"
const-string v2, "com.google"
invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/wallet/o;->u:Landroid/accounts/Account;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method