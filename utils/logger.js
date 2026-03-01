// Basit ve renkli konsol logger
// Tüm loglar zaman damgası + seviye ile basılır

const colors = {
  reset: "\x1b[0m",
  red: "\x1b[31m",
  yellow: "\x1b[33m",
  green: "\x1b[32m",
  cyan: "\x1b[36m",
  gray: "\x1b[90m",
};

function timestamp() {
  return new Date().toLocaleString("tr-TR", {
    hour: "2-digit",
    minute: "2-digit",
    second: "2-digit",
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  });
}

export const log = {
  info(msg) {
    console.log(
      `${colors.gray}[${timestamp()}]${colors.reset} ${colors.green}INFO${colors.reset}  ${msg}`,
    );
  },

  warn(msg) {
    console.warn(
      `${colors.gray}[${timestamp()}]${colors.reset} ${colors.yellow}WARN${colors.reset}  ${msg}`,
    );
  },

  error(msg, err) {
    console.error(
      `${colors.gray}[${timestamp()}]${colors.reset} ${colors.red}ERROR${colors.reset} ${msg}`,
    );
    if (err?.stack) {
      console.error(`${colors.gray}${err.stack}${colors.reset}`);
    }
  },

  debug(msg) {
    if (process.env.NODE_ENV !== "production") {
      console.log(
        `${colors.gray}[${timestamp()}]${colors.reset} ${colors.cyan}DEBUG${colors.reset} ${msg}`,
      );
    }
  },
};
