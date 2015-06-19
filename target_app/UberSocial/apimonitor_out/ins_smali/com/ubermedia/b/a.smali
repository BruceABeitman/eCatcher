.class public Lcom/ubermedia/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v1
invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;
move-result-object v2
array-length v3, v2
const/4 v1, 0x0
:goto_b
if-ge v1, v3, :cond_25
aget-object v4, v2, v1
iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
if-eqz v5, :cond_26
sget-object v5, Lcom/ubermedia/ui/b;->s:Ljava/util/regex/Pattern;
iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v5
invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
move-result v5
if-eqz v5, :cond_26
iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
:cond_25
return-object v0
:cond_26
add-int/lit8 v1, v1, 0x1
goto :goto_b
.end method