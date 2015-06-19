.class public final Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/util/cz;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.field private static final c:Lcom/spotify/mobile/android/util/cz;
.field private static d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
.field private static e:Ljava/lang/String;
.field private static f:I
.field private static g:Z
.field private static h:Z
.field private final i:Ljava/lang/String;
.field private final j:Lcom/spotify/mobile/android/util/cx;
.field private final k:Lcom/spotify/mobile/android/util/cl;
.field private l:Lcom/spotify/mobile/android/g/a;
.field private final m:Lcom/spotify/cosmos/android/Resolver;
.field private final n:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 1
const-string v0, "check_optin_trial_eligibility"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "check_optin_trial_eligibility_username"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b:Lcom/spotify/mobile/android/util/cz;
const-string v0, "check_optin_trial_eligibility_duration"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c:Lcom/spotify/mobile/android/util/cz;
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->l:Lcom/spotify/mobile/android/g/a;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->n:Ljava/lang/Runnable;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->j:Lcom/spotify/mobile/android/util/cx;
new-instance v0, Lcom/spotify/cosmos/android/Resolver;
invoke-direct {v0, p1}, Lcom/spotify/cosmos/android/Resolver;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->m:Lcom/spotify/cosmos/android/Resolver;
new-instance v0, Lcom/spotify/mobile/android/util/cm;
const-string v1, "check-optin-trial-eligibility"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->n:Ljava/lang/Runnable;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V
new-instance v1, Lcom/spotify/mobile/android/util/cq;
const-wide/16 v2, 0x64
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/util/co;
const-wide/16 v2, 0x190
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/co;-><init>(JLjava/util/concurrent/TimeUnit;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/util/cr;
const-wide/16 v1, 0x5
const-wide/16 v3, 0x7
sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/util/cm;->d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
return-void
.end method
.method public static a()Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;Ljava/lang/String;I)V
.registers 8
const/4 v4, 0x1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
if-eq p0, v0, :cond_23
const-string v0, "Got trial eligibility: %s (was %s) %d days (from backend)"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
aput-object v2, v1, v4
const/4 v2, 0x2
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
sput-object p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sput-object p1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e:Ljava/lang/String;
sput p2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f:I
sput-boolean v4, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g:Z
:cond_23
return-void
.end method
.method public static b()I
.registers 1
sget v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f:I
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cl;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;Ljava/lang/String;I)V
.registers 8
const/4 v4, 0x2
const/4 v2, 0x0
const/4 v3, 0x1
sput-boolean v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h:Z
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
if-eq p0, v0, :cond_1c
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
if-eq v0, v1, :cond_1d
const-string v0, "Ignore state, %s, from prefs since state is already loaded: %s"
new-array v1, v4, [Ljava/lang/Object;
aput-object p0, v1, v2
sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_1c
:goto_1c
return-void
:cond_1d
const-string v0, "Got trial eligibility: %s (was %s) %d days (from preferences)"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
aput-object p0, v1, v2
sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
aput-object v2, v1, v3
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
sput-object p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sput-object p1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e:Ljava/lang/String;
sput p2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f:I
goto :goto_1c
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->j:Lcom/spotify/mobile/android/util/cx;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/cosmos/android/Resolver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->m:Lcom/spotify/cosmos/android/Resolver;
return-object v0
.end method
.method static synthetic e()Lcom/spotify/cosmos/router/Request;
.registers 5
const-class v0, Lcom/spotify/mobile/android/util/ao;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ao;
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "{\"trial\":\"opt-in\", \"device_id\":\"%s\"}"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/spotify/cosmos/router/Request;
const-string v2, "GET"
const-string v3, "hm://login-trial/v2/viable"
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-direct {v1, v2, v3, v4, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
return-object v1
.end method
.method static synthetic f()Lcom/spotify/mobile/android/util/cz;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c:Lcom/spotify/mobile/android/util/cz;
return-object v0
.end method
.method static synthetic g()Lcom/spotify/mobile/android/util/cz;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b:Lcom/spotify/mobile/android/util/cz;
return-object v0
.end method
.method static synthetic h()Lcom/spotify/mobile/android/util/cz;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a:Lcom/spotify/mobile/android/util/cz;
return-object v0
.end method
.method private static i()V
.registers 2
const/4 v1, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
const/4 v0, 0x0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e:Ljava/lang/String;
sput v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f:I
sput-boolean v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g:Z
const/4 v0, 0x1
sput-boolean v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h:Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/g/a;)V
.registers 6
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->l:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3a
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->l:Lcom/spotify/mobile/android/g/a;
invoke-virtual {p1}, Lcom/spotify/mobile/android/g/a;->c()Z
move-result v0
if-eqz v0, :cond_3b
invoke-virtual {p1}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_3b
sget-boolean v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g:Z
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z
move-result v0
if-nez v0, :cond_3a
const-string v0, "Starting checking for: %s"
new-array v1, v2, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V
:goto_3a
:cond_3a
return-void
:cond_3b
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;
if-eq v0, v1, :cond_65
const-string v0, "Reset persisted state due to change in product (premium: %s)"
new-array v1, v2, [Ljava/lang/Object;
aput-object p1, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_65
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V
goto :goto_3a
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final c()V
.registers 7
const/4 v5, 0x0
sget-boolean v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h:Z
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_21
const-string v1, "Reset state since username changed %s -> %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
sget-object v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e:Ljava/lang/String;
aput-object v3, v2, v5
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->i()V
:cond_21
if-nez v0, :cond_2d
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/a;
invoke-direct {v0, p0, v5}, Lcom/spotify/mobile/android/ui/activity/upsell/a;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;B)V
new-array v1, v5, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_2d
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->k:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->m:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method