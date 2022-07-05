.class public Lcom/android/systemui/qs/tiles/UiModeNightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "UiModeNightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mLastClickMillis:J

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mSpecialThemeSetting:Lcom/oneplus/util/SystemSetting;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh:mm a"

    .line 57
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 59
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 6

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 66
    sget p1, Lcom/android/systemui/R$drawable;->op_qs_dark_mode:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLastClickMillis:J

    .line 85
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p1, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "oem_special_theme"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSpecialThemeSetting:Lcom/oneplus/util/SystemSetting;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private applyOneplusTheme(I)V
    .locals 2

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_black_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private getLastLightThemeColor()I
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_black_mode_last_light"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleClick$0(Z)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->toggleDarkMode(Z)V

    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private savePreviousOneplusLightTheme()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oem_black_mode_last_light"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private toggleDarkMode(Z)V
    .locals 4

    .line 241
    sget-boolean v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->DEBUG:Z

    const-string/jumbo v1, "toggleDarkMode("

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->updateOneplusTheme(Z)V

    .line 245
    sget-boolean v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 249
    sget-boolean v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 250
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "), 3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateOneplusTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->savePreviousOneplusLightTheme()V

    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->applyOneplusTheme(I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->getLastLightThemeColor()I

    move-result p1

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->applyOneplusTheme(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 211
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DARK_THEME_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick()V
    .locals 7

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 133
    iget-wide v3, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLastClickMillis:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "rapid click detected, ignore."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    iput-wide v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLastClickMillis:J

    .line 138
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 286
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSpecialThemeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8

    .line 147
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    if-nez p2, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 160
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 162
    sget v4, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_until_sunrise:I

    goto :goto_1

    .line 163
    :cond_1
    sget v4, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_on_at_sunset:I

    .line 161
    :goto_1
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_2
    if-ne p2, v3, :cond_6

    .line 165
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz v0, :cond_3

    .line 168
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v4}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v4

    goto :goto_2

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v4}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v4

    .line 172
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_4

    .line 173
    sget v6, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_until:I

    goto :goto_3

    .line 174
    :cond_4
    sget v6, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_on_at:I

    :goto_3
    new-array v7, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 175
    invoke-virtual {v4}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    sget-object p2, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p2, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    aput-object p2, v7, v2

    .line 172
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    .line 177
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 180
    :goto_5
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 185
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->op_qs_dark_mode_tile_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 188
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x2

    if-eqz p0, :cond_7

    .line 189
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    new-array p0, v3, [Ljava/lang/CharSequence;

    .line 190
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v0, p0, v2

    const-string v0, ", "

    aput-object v0, p0, v1

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object v0, p0, p2

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_6
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 194
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 195
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_7

    .line 198
    :cond_8
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_9

    move v1, p2

    :cond_9
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 200
    :goto_7
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    .line 201
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .line 231
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 232
    sget-boolean v1, Lcom/android/systemui/qs/tiles/UiModeNightTile;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$handleClick$0$UiModeNightTile(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->lambda$handleClick$0(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 118
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
